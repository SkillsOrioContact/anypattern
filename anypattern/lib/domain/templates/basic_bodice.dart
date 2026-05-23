import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class BasicBodiceTemplate extends PatternTemplate {
  BasicBodiceTemplate() : super(
    id: 'basic_bodice',
    name: 'Basic Bodice',
    description: 'A standard front and back bodice block with waist and bust darts.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    // Basic measurements with fallbacks
    double bust = getMeasurement(m.bust, 88.0);
    double waist = getMeasurement(m.waist, 70.0);
    double neck = getMeasurement(m.neck, 38.0);
    double shoulder = getMeasurement(m.shoulder, 12.0);
    double backWidth = getMeasurement(m.backWidth, 34.0);
    double waistLengthFront = getMeasurement(m.waistLengthFront, 42.0);
    double waistLengthBack = getMeasurement(m.waistLengthBack, 40.0);
    double bustHeight = getMeasurement(m.bustHeight, 26.0);
    double bustDistance = getMeasurement(m.bustDistance, 18.0);

    // Simplistic drafting for MVP (would be highly complex in real life)
    double workingBust = (bust + 4.0) / 4;

    // Front Bodice
    Map<String, Point2D> fp = {};
    List<PathSegment> fPaths = [];

    fp['CF_Neck'] = const Point2D(0, 8); // Neck drop
    fp['CF_Waist'] = Point2D(0, waistLengthFront);
    fp['Side_Waist'] = Point2D(workingBust - 2, waistLengthFront);
    fp['Underarm'] = Point2D(workingBust, 22); // Armhole depth approx
    fp['Shoulder'] = Point2D(18, 5); // Shoulder drop approx
    fp['Neck_Shoulder'] = const Point2D(7, 0); // Neck width approx
    fp['Bust_Apex'] = Point2D(bustDistance / 2, bustHeight);

    fPaths.add(LineSegment(fp['CF_Neck']!, fp['CF_Waist']!));
    fPaths.add(LineSegment(fp['CF_Waist']!, fp['Side_Waist']!));
    fPaths.add(LineSegment(fp['Side_Waist']!, fp['Underarm']!));

    // Armhole curve
    fPaths.add(BezierCurve(
      fp['Underarm']!,
      Point2D(workingBust, 15),
      Point2D(18, 10),
      fp['Shoulder']!
    ));

    fPaths.add(LineSegment(fp['Shoulder']!, fp['Neck_Shoulder']!));

    // Neck curve
    fPaths.add(BezierCurve(
      fp['Neck_Shoulder']!,
      const Point2D(3, 2),
      const Point2D(0, 5),
      fp['CF_Neck']!
    ));

    PatternPiece frontPiece = PatternPiece(
      id: 'front_bodice',
      name: 'Front Bodice',
      points: fp,
      paths: fPaths,
    );

    return [frontPiece];
  }
}
