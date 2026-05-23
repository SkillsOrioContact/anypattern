import 'package:flutter/material.dart';
import '../../core/engine/geometry.dart';

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

class PatternEditorScreen extends StatelessWidget {
  final String templateId;
  const PatternEditorScreen({super.key, required this.templateId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drafting: $templateId'),
        actions: [
          IconButton(icon: const Icon(Icons.save), onPressed: () {}),
          IconButton(icon: const Icon(Icons.picture_as_pdf), onPressed: () {}),
        ],
      ),
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        minScale: 0.1,
        maxScale: 10.0,
        child: CustomPaint(
          size: Size.infinite,
          painter: PatternEditorPainter([]), // Currently empty, pieces to be passed here from ViewModel
        ),
      ),
    );
  }
}
