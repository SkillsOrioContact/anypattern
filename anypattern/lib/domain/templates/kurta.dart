import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class KurtaTemplate extends PatternTemplate {
  KurtaTemplate() : super(
    id: 'kurta',
    name: 'Traditional Kurta',
    description: 'A traditional straight-cut tunic with side slits.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    double chest = getMeasurement(m.chest, 90.0);
    double hip = getMeasurement(m.hip, 96.0);
    double length = getMeasurement(m.outseam, 105.0); // Approx length
    double slitHeight = adjustments['slitHeight'] ?? 40.0; // Distance from hem

    double workingChest = chest / 4 + 4; // Traditional ease
    double workingHip = hip / 4 + 3;

    Map<String, Point2D> kp = {};
    List<PathSegment> paths = [];

    kp['CF_Neck'] = const Point2D(0, 10);
    kp['CF_Hem'] = Point2D(0, length);
    kp['Shoulder'] = const Point2D(20, 4);
    kp['Neck_Shoulder'] = const Point2D(8, 0);
    kp['Underarm'] = Point2D(workingChest, 26);
    kp['Side_Slit_Top'] = Point2D(workingHip, length - slitHeight);
    kp['Side_Hem'] = Point2D(workingHip, length);

    paths.add(LineSegment(kp['CF_Neck']!, kp['CF_Hem']!));
    paths.add(LineSegment(kp['CF_Hem']!, kp['Side_Hem']!));
    paths.add(LineSegment(kp['Side_Hem']!, kp['Side_Slit_Top']!)); // Open slit section

    // Side seam above slit
    paths.add(BezierCurve(
      kp['Side_Slit_Top']!,
      Point2D(workingHip * 0.95, length - slitHeight - 20),
      Point2D(workingChest * 0.95, 26 + 10),
      kp['Underarm']!
    ));

    paths.add(BezierCurve(
      kp['Underarm']!,
      Point2D(workingChest, 15),
      Point2D(20, 10),
      kp['Shoulder']!
    ));

    paths.add(LineSegment(kp['Shoulder']!, kp['Neck_Shoulder']!));

    paths.add(BezierCurve(
      kp['Neck_Shoulder']!,
      const Point2D(5, 2),
      const Point2D(0, 5),
      kp['CF_Neck']!
    ));

    PatternPiece frontPiece = PatternPiece(
      id: 'front_kurta',
      name: 'Front Kurta',
      points: kp,
      paths: paths,
      // Add notch to indicate slit
      notches: [kp['Side_Slit_Top']!],
    );

    return [frontPiece];
  }
}
