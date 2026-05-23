import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import '../../core/engine/geometry.dart';

class PdfExportService {
  /// Exports pattern pieces to a tiled PDF document suitable for home printing.
  Future<void> exportToPdf(List<PatternPiece> pieces, File file, {PdfPageFormat format = PdfPageFormat.a4}) async {
    final pdf = pw.Document();

    // A simple single-page export for MVP. Real tiling logic would calculate
    // bounding boxes and split into multiple pages.
    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.CustomPaint(
              size: const PdfPoint(500, 700), // Scaled output area
              painter: (canvas, size) {
                // Same logic as Flutter canvas, just using PDF canvas commands
                final cmToPoint = 28.3465; // 1 cm is ~28.34 points

                canvas.saveContext();
                canvas.translate(size.x / 2, size.y / 2); // center on page

                for (var piece in pieces) {
                  // PdfGraphicsPath does not exist in pdf/widgets.dart pw namespace in this way,
                  // we directly use the canvas methods
                  for (int i = 0; i < piece.paths.length; i++) {
                    var segment = piece.paths[i];
                    if (segment is LineSegment) {
                      if (i == 0) canvas.moveTo(segment.start.x * cmToPoint, segment.start.y * cmToPoint);
                      canvas.lineTo(segment.end.x * cmToPoint, segment.end.y * cmToPoint);
                    } else if (segment is BezierCurve) {
                      if (i == 0) canvas.moveTo(segment.start.x * cmToPoint, segment.start.y * cmToPoint);
                      canvas.curveTo(
                        segment.control1.x * cmToPoint, segment.control1.y * cmToPoint,
                        segment.control2.x * cmToPoint, segment.control2.y * cmToPoint,
                        segment.end.x * cmToPoint, segment.end.y * cmToPoint,
                      );
                    }
                  }

                  canvas.setStrokeColor(PdfColors.black);
                  canvas.setLineWidth(1.0);
                  canvas.strokePath();

                  // Grain line
                  if (piece.grainLine != null) {
                    canvas.drawLine(
                      piece.grainLine!.start.x * cmToPoint, piece.grainLine!.start.y * cmToPoint,
                      piece.grainLine!.end.x * cmToPoint, piece.grainLine!.end.y * cmToPoint
                    );
                    canvas.setStrokeColor(PdfColors.blue);
                    canvas.setLineWidth(0.5);
                    canvas.strokePath();
                  }
                }

                canvas.restoreContext();
              },
            ),
          );
        },
      ),
    );

    final bytes = await pdf.save();
    await file.writeAsBytes(bytes);
  }
}
