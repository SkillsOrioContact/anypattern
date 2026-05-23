import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import '../../core/engine/geometry.dart';

class PdfExportService {
  /// Exports pattern pieces to a tiled PDF document suitable for home printing.
  Future<void> exportToPdf(List<PatternPiece> pieces, File file, {PdfPageFormat format = PdfPageFormat.a4, bool tiled = false}) async {
    final pdf = pw.Document();

    // A simple single-page export for MVP. If `tiled` is true,
    // it theoretically scales logic across multiple standard pages.
    // For MVP, we provide scale parameter logic and metadata printing.
    pdf.addPage(
      pw.Page(
        pageFormat: format,
        margin: const pw.EdgeInsets.all(1.0 * PdfPageFormat.cm),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Header(level: 0, text: 'AnyPattern - Draft Export'),
              pw.Text('Scale Check: 10cm line below:'),
              pw.Container(
                width: 10 * 28.3465, // 10cm in points
                height: 2,
                color: PdfColors.black,
                margin: const pw.EdgeInsets.only(bottom: 20),
              ),
              pw.Expanded(
                child: pw.Center(
                  child: pw.CustomPaint(
                    size: PdfPoint(format.width - 2.0 * PdfPageFormat.cm, format.height - 4.0 * PdfPageFormat.cm),
                    painter: (canvas, size) {
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
                ),
              ),
            ]
          );
        },
      ),
    );

    final bytes = await pdf.save();
    await file.writeAsBytes(bytes);
  }
}
