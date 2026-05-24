import 'package:flutter_test/flutter_test.dart';
import 'package:anypattern/core/engine/geometry.dart';

void main() {
  group('Geometry Engine Tests', () {
    test('Point2D equality works', () {
      const p1 = Point2D(10.5, 20.0);
      const p2 = Point2D(10.5, 20.0);
      const p3 = Point2D(11.0, 20.0);

      expect(p1, p2);
      expect(p1, isNot(p3));
    });

    test('LineSegment stores start and end points correctly', () {
      const p1 = Point2D(0, 0);
      const p2 = Point2D(10, 10);
      final line = LineSegment(p1, p2);

      expect(line.start, p1);
      expect(line.end, p2);
    });

    test('BezierCurve stores control points correctly', () {
      const start = Point2D(0, 0);
      const c1 = Point2D(5, -5);
      const c2 = Point2D(10, 5);
      const end = Point2D(15, 0);
      final curve = BezierCurve(start, c1, c2, end);

      expect(curve.start, start);
      expect(curve.control1, c1);
      expect(curve.control2, c2);
      expect(curve.end, end);
    });

    test('PatternPiece initializes with points and paths', () {
      final points = {
        'A': const Point2D(0, 0),
        'B': const Point2D(10, 0),
        'C': const Point2D(10, 10),
        'D': const Point2D(0, 10),
      };

      final paths = [
        LineSegment(points['A']!, points['B']!),
        LineSegment(points['B']!, points['C']!),
        LineSegment(points['C']!, points['D']!),
        LineSegment(points['D']!, points['A']!),
      ];

      final piece = PatternPiece(
        id: 'test_square',
        name: 'Test Square',
        points: points,
        paths: paths,
      );

      expect(piece.id, 'test_square');
      expect(piece.points.length, 4);
      expect(piece.paths.length, 4);
      expect(piece.grainLine, isNull);
    });
  });
}