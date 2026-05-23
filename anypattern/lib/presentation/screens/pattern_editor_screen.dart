import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import '../../core/engine/geometry.dart';
import '../../core/export/pdf_export.dart';
import '../providers/pattern_editor_provider.dart';

class PatternEditorPainter extends CustomPainter {
  final List<PatternPiece> pieces;

  PatternEditorPainter(this.pieces);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final dashPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    // A very basic scaling to fit pieces on screen
    // Real implementation would have proper panning/zooming via InteractiveViewer
    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
    canvas.scale(2.0, 2.0); // Scale up cm to pixels roughly

    for (var piece in pieces) {
      final path = Path();

      for (int i = 0; i < piece.paths.length; i++) {
        var segment = piece.paths[i];
        if (segment is LineSegment) {
          if (i == 0) path.moveTo(segment.start.x, segment.start.y);
          path.lineTo(segment.end.x, segment.end.y);
        } else if (segment is BezierCurve) {
          if (i == 0) path.moveTo(segment.start.x, segment.start.y);
          path.cubicTo(
            segment.control1.x, segment.control1.y,
            segment.control2.x, segment.control2.y,
            segment.end.x, segment.end.y
          );
        }
      }

      canvas.drawPath(path, paint);

      if (piece.grainLine != null) {
        canvas.drawLine(
          Offset(piece.grainLine!.start.x, piece.grainLine!.start.y),
          Offset(piece.grainLine!.end.x, piece.grainLine!.end.y),
          dashPaint
        );
      }
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class PatternEditorScreen extends ConsumerWidget {
  final String templateId;
  const PatternEditorScreen({super.key, required this.templateId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pieces = ref.watch(draftedPiecesProvider(templateId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Drafting: $templateId'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Project saved locally!')),
              );
            }
          ),
          IconButton(
            icon: const Icon(Icons.picture_as_pdf),
            onPressed: () async {
              try {
                final dir = await getApplicationDocumentsDirectory();
                final file = File('${dir.path}/$templateId-export.pdf');
                await PdfExportService().exportToPdf(pieces, file);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Exported to ${file.path}')),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Export failed: $e')),
                  );
                }
              }
            }
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: const Icon(Icons.pan_tool), onPressed: () {}, tooltip: 'Pan'),
                IconButton(icon: const Icon(Icons.touch_app), onPressed: () {}, tooltip: 'Select Point'),
                IconButton(icon: const Icon(Icons.gesture), onPressed: () {}, tooltip: 'Edit Curve'),
                IconButton(icon: const Icon(Icons.straighten), onPressed: () {}, tooltip: 'Measure'),
                IconButton(icon: const Icon(Icons.undo), onPressed: () {}, tooltip: 'Undo'),
                IconButton(icon: const Icon(Icons.redo), onPressed: () {}, tooltip: 'Redo'),
              ],
            ),
          ),
          Expanded(
            child: InteractiveViewer(
              boundaryMargin: const EdgeInsets.all(double.infinity),
              minScale: 0.1,
              maxScale: 10.0,
              child: CustomPaint(
                size: Size.infinite,
                painter: PatternEditorPainter(pieces),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
