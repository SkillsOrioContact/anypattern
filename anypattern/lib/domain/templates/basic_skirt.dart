import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class BasicSkirtTemplate extends PatternTemplate {
  BasicSkirtTemplate() : super(
    id: 'basic_skirt',
    name: 'Basic Skirt',
    description: 'A standard straight skirt with waist darts.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    // Basic measurements with fallbacks
    double waist = getMeasurement(m.waist, 70.0);
    double hip = getMeasurement(m.hip, 96.0);
    double hipHeight = getMeasurement(m.hipHeight, 20.0);
    double length = getMeasurement(m.outseam, 60.0); // using outseam as length fallback

    // Ease allowances
    double waistEase = adjustments['waistEase'] ?? 2.0;
    double hipEase = adjustments['hipEase'] ?? 4.0;

    double workingWaist = (waist + waistEase) / 4;
    double workingHip = (hip + hipEase) / 4;

    // Front Skirt Drafting
    Map<String, Point2D> frontPoints = {};
    List<PathSegment> frontPaths = [];

    // Origin (Center Front Waist)
    frontPoints['CF_Waist'] = const Point2D(0, 0);

    // Center Front Hem
    frontPoints['CF_Hem'] = Point2D(0, length);

    // Center Front Hip
    frontPoints['CF_Hip'] = Point2D(0, hipHeight);

    // Side Hip
    frontPoints['Side_Hip'] = Point2D(workingHip, hipHeight);

    // Side Hem
    frontPoints['Side_Hem'] = Point2D(workingHip, length);

    // Dart calculations (simple front dart)
    double frontDartWidth = 2.0;
    double frontDartLength = 10.0;

    // Side Waist (working waist + dart width)
    double sideWaistX = workingWaist + frontDartWidth;
    // Front waist has a slight dip at CF, rise at side
    frontPoints['Side_Waist'] = Point2D(sideWaistX, -1.5);

    // Dart points
    double dartDistance = sideWaistX / 2.5; // distance from CF
    frontPoints['Dart_Center'] = Point2D(dartDistance, -0.5); // approximate waist curve intercept
    frontPoints['Dart_Left'] = Point2D(dartDistance - (frontDartWidth / 2), -0.2);
    frontPoints['Dart_Right'] = Point2D(dartDistance + (frontDartWidth / 2), -0.8);
    frontPoints['Dart_Apex'] = Point2D(dartDistance, frontDartLength);

    // Build front paths
    frontPaths.add(LineSegment(frontPoints['CF_Waist']!, frontPoints['CF_Hip']!));
    frontPaths.add(LineSegment(frontPoints['CF_Hip']!, frontPoints['CF_Hem']!));
    frontPaths.add(LineSegment(frontPoints['CF_Hem']!, frontPoints['Side_Hem']!));
    frontPaths.add(LineSegment(frontPoints['Side_Hem']!, frontPoints['Side_Hip']!));

    // Side curve (hip to waist)
    frontPaths.add(BezierCurve(
      frontPoints['Side_Hip']!,
      Point2D(workingHip, hipHeight * 0.5),
      Point2D(sideWaistX + 0.5, hipHeight * 0.2),
      frontPoints['Side_Waist']!
    ));

    // Waist curve
    frontPaths.add(LineSegment(frontPoints['Side_Waist']!, frontPoints['Dart_Right']!));
    frontPaths.add(LineSegment(frontPoints['Dart_Right']!, frontPoints['Dart_Apex']!));
    frontPaths.add(LineSegment(frontPoints['Dart_Apex']!, frontPoints['Dart_Left']!));
    frontPaths.add(LineSegment(frontPoints['Dart_Left']!, frontPoints['CF_Waist']!));

    PatternPiece frontPiece = PatternPiece(
      id: 'front_skirt',
      name: 'Front Skirt',
      points: frontPoints,
      paths: frontPaths,
      grainLine: LineSegment(Point2D(10, 0), Point2D(10, length)),
    );

    // Back Skirt Drafting (similar, but with back specific darts/shaping)
    Map<String, Point2D> backPoints = {};
    List<PathSegment> backPaths = [];

    // Origin (Center Back Waist)
    backPoints['CB_Waist'] = const Point2D(0, 0);
    backPoints['CB_Hip'] = Point2D(0, hipHeight);
    backPoints['CB_Hem'] = Point2D(0, length);
    backPoints['Side_Hip'] = Point2D(-workingHip, hipHeight);
    backPoints['Side_Hem'] = Point2D(-workingHip, length);

    double backDartWidth = 3.0;
    double backDartLength = 14.0;
    double backSideWaistX = -(workingWaist + backDartWidth);
    backPoints['Side_Waist'] = Point2D(backSideWaistX, -1.0);

    double bDartDist = backSideWaistX / 2.5;
    backPoints['Dart_Center'] = Point2D(bDartDist, -0.5);
    backPoints['Dart_Left'] = Point2D(bDartDist - (backDartWidth / 2), -0.7);
    backPoints['Dart_Right'] = Point2D(bDartDist + (backDartWidth / 2), -0.3);
    backPoints['Dart_Apex'] = Point2D(bDartDist, backDartLength);

    backPaths.add(LineSegment(backPoints['CB_Waist']!, backPoints['CB_Hip']!));
    backPaths.add(LineSegment(backPoints['CB_Hip']!, backPoints['CB_Hem']!));
    backPaths.add(LineSegment(backPoints['CB_Hem']!, backPoints['Side_Hem']!));
    backPaths.add(LineSegment(backPoints['Side_Hem']!, backPoints['Side_Hip']!));

    backPaths.add(BezierCurve(
      backPoints['Side_Hip']!,
      Point2D(-workingHip, hipHeight * 0.5),
      Point2D(backSideWaistX - 0.5, hipHeight * 0.2),
      backPoints['Side_Waist']!
    ));

    backPaths.add(LineSegment(backPoints['Side_Waist']!, backPoints['Dart_Left']!));
    backPaths.add(LineSegment(backPoints['Dart_Left']!, backPoints['Dart_Apex']!));
    backPaths.add(LineSegment(backPoints['Dart_Apex']!, backPoints['Dart_Right']!));
    backPaths.add(LineSegment(backPoints['Dart_Right']!, backPoints['CB_Waist']!));

    PatternPiece backPiece = PatternPiece(
      id: 'back_skirt',
      name: 'Back Skirt',
      points: backPoints,
      paths: backPaths,
      grainLine: LineSegment(Point2D(-10, 0), Point2D(-10, length)),
    );

    return [frontPiece, backPiece];
  }
}
