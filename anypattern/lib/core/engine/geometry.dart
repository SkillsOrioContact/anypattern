import 'dart:math';

/// Represents a 2D coordinate point
class Point2D {
  final double x;
  final double y;

  const Point2D(this.x, this.y);

  Point2D copyWith({double? x, double? y}) {
    return Point2D(x ?? this.x, y ?? this.y);
  }

  /// Distance between this point and another
  double distanceTo(Point2D other) {
    return sqrt(pow(other.x - x, 2) + pow(other.y - y, 2));
  }

  /// Angle in radians between this point and another
  double angleTo(Point2D other) {
    return atan2(other.y - y, other.x - x);
  }

  /// Move point along an angle by a distance
  Point2D moveAlongAngle(double angle, double distance) {
    return Point2D(
      x + distance * cos(angle),
      y + distance * sin(angle),
    );
  }

  /// Midpoint between this and another point
  Point2D midpointTo(Point2D other) {
    return Point2D((x + other.x) / 2, (y + other.y) / 2);
  }
}

/// Abstract class for geometric paths (lines, curves)
abstract class PathSegment {}

/// A straight line segment
class LineSegment extends PathSegment {
  final Point2D start;
  final Point2D end;

  LineSegment(this.start, this.end);
}

/// A cubic bezier curve
class BezierCurve extends PathSegment {
  final Point2D start;
  final Point2D control1;
  final Point2D control2;
  final Point2D end;

  BezierCurve(this.start, this.control1, this.control2, this.end);
}

/// A constructed pattern piece consisting of points and segments connecting them
class PatternPiece {
  final String id;
  final String name;
  final Map<String, Point2D> points;
  final List<PathSegment> paths;

  // Marks for cutting, folding, notches
  final List<Point2D> notches;
  final LineSegment? grainLine;

  PatternPiece({
    required this.id,
    required this.name,
    this.points = const {},
    this.paths = const [],
    this.notches = const [],
    this.grainLine,
  });
}
