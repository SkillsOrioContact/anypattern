import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class BasicHoodTemplate extends PatternTemplate {
  BasicHoodTemplate() : super(
    id: 'basic_hood',
    name: 'Basic Hood',
    description: 'A standard rounded hood block.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    double neck = getMeasurement(m.neck, 38.0);
    double headHeight = adjustments['headHeight'] ?? 35.0; // Approx back of neck to top of head
    double headDepth = adjustments['headDepth'] ?? 25.0; // Approx front of face to back of head

    double halfNeck = neck / 2;

    Map<String, Point2D> hp = {};
    List<PathSegment> paths = [];

    hp['CB_Neck'] = const Point2D(0, 0);
    hp['CF_Neck'] = Point2D(halfNeck * 1.2, -2); // Hoods need extra neck ease
    hp['Top_Back'] = Point2D(0, -headHeight);
    hp['Top_Front'] = Point2D(headDepth, -headHeight);

    // Construct the hood shape
    paths.add(BezierCurve(
      hp['CB_Neck']!,
      Point2D(halfNeck * 0.5, 0),
      Point2D(halfNeck * 0.8, -1),
      hp['CF_Neck']!
    ));

    // Front face opening
    paths.add(LineSegment(hp['CF_Neck']!, hp['Top_Front']!));

    // Top and back curve of the head
    paths.add(BezierCurve(
      hp['Top_Front']!,
      Point2D(headDepth * 0.5, -headHeight),
      Point2D(-2, -headHeight * 0.8),
      hp['CB_Neck']!
    ));

    PatternPiece hoodPiece = PatternPiece(
      id: 'hood_piece',
      name: 'Hood (Cut 2)',
      points: hp,
      paths: paths,
      grainLine: LineSegment(Point2D(headDepth/2, -headHeight/2), Point2D(headDepth/2, -5)),
    );

    return [hoodPiece];
  }
}
