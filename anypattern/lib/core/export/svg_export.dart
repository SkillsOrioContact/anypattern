import 'dart:io';
import '../../core/engine/geometry.dart';

class SvgExportService {
  /// Exports pattern pieces to an SVG file
  Future<void> exportToSvg(List<PatternPiece> pieces, File file) async {
    StringBuffer sb = StringBuffer();
    sb.writeln('<?xml version="1.0" encoding="UTF-8" standalone="no"?>');
    sb.writeln('<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">');

    // Group translated to center (rough assumption for MVP)
    sb.writeln('  <g transform="translate(400, 400)">');

    for (var piece in pieces) {
      sb.write('    <path d="');

      for (int i = 0; i < piece.paths.length; i++) {
        var segment = piece.paths[i];
        if (segment is LineSegment) {
          if (i == 0) sb.write('M ${segment.start.x} ${segment.start.y} ');
          sb.write('L ${segment.end.x} ${segment.end.y} ');
        } else if (segment is BezierCurve) {
          if (i == 0) sb.write('M ${segment.start.x} ${segment.start.y} ');
          sb.write('C ${segment.control1.x} ${segment.control1.y}, ');
          sb.write('${segment.control2.x} ${segment.control2.y}, ');
          sb.write('${segment.end.x} ${segment.end.y} ');
        }
      }

      sb.writeln('" fill="none" stroke="black" stroke-width="2"/>');

      if (piece.grainLine != null) {
        sb.writeln('    <line x1="${piece.grainLine!.start.x}" y1="${piece.grainLine!.start.y}" '
            'x2="${piece.grainLine!.end.x}" y2="${piece.grainLine!.end.y}" '
            'stroke="blue" stroke-dasharray="5,5" stroke-width="1"/>');
      }
    }

    sb.writeln('  </g>');
    sb.writeln('</svg>');

    await file.writeAsString(sb.toString());
  }
}
