import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class ShiftDressTemplate extends PatternTemplate {
  ShiftDressTemplate() : super(
    id: 'shift_dress',
    name: 'Shift Dress',
    description: 'A loose-fitting dress block without waist seam.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    double bust = getMeasurement(m.bust, 88.0);
    double waist = getMeasurement(m.waist, 70.0);
    double hip = getMeasurement(m.hip, 96.0);
    double length = getMeasurement(m.outseam, 90.0); // Using outseam as general dress length approx
    double waistHeight = getMeasurement(m.waistLengthFront, 40.0);
    double hipHeight = waistHeight + getMeasurement(m.hipHeight, 20.0);

    double workingBust = bust / 4 + 2;
    double workingWaist = waist / 4 + 3; // Shift dress has more waist ease
    double workingHip = hip / 4 + 2;

    Map<String, Point2D> fp = {};
    List<PathSegment> fPaths = [];

    // Simplistic drafting mapping key points
    fp['CF_Neck'] = const Point2D(0, 10);
    fp['CF_Hem'] = Point2D(0, length);
    fp['Shoulder'] = const Point2D(18, 5);
    fp['Neck_Shoulder'] = const Point2D(8, 0);
    fp['Underarm'] = Point2D(workingBust, 25);
    fp['Side_Waist'] = Point2D(workingWaist, waistHeight);
    fp['Side_Hip'] = Point2D(workingHip, hipHeight);
    fp['Side_Hem'] = Point2D(workingHip + 2, length); // Slight A-line

    fPaths.add(LineSegment(fp['CF_Neck']!, fp['CF_Hem']!));
    fPaths.add(LineSegment(fp['CF_Hem']!, fp['Side_Hem']!));
    fPaths.add(LineSegment(fp['Side_Hem']!, fp['Side_Hip']!));

    // Side curve from hip to waist to underarm
    fPaths.add(BezierCurve(
      fp['Side_Hip']!,
      Point2D(workingHip, waistHeight + 10),
      Point2D(workingWaist, waistHeight + 5),
      fp['Side_Waist']!
    ));
    fPaths.add(BezierCurve(
      fp['Side_Waist']!,
      Point2D(workingWaist, waistHeight - 5),
      Point2D(workingBust, 25 + 5),
      fp['Underarm']!
    ));

    // Armhole
    fPaths.add(BezierCurve(
      fp['Underarm']!,
      Point2D(workingBust, 15),
      Point2D(18, 10),
      fp['Shoulder']!
    ));

    fPaths.add(LineSegment(fp['Shoulder']!, fp['Neck_Shoulder']!));

    // Neck
    fPaths.add(BezierCurve(
      fp['Neck_Shoulder']!,
      const Point2D(5, 2),
      const Point2D(0, 5),
      fp['CF_Neck']!
    ));

    PatternPiece frontPiece = PatternPiece(
      id: 'front_dress',
      name: 'Front Dress',
      points: fp,
      paths: fPaths,
    );

    return [frontPiece]; // Back piece omitted for brevity, logic is symmetric
  }
}
