import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class BasicSleeveTemplate extends PatternTemplate {
  BasicSleeveTemplate() : super(
    id: 'basic_sleeve',
    name: 'Basic Sleeve',
    description: 'A standard straight sleeve block.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    double sleeveLength = getMeasurement(m.sleeveLength, 60.0);
    double bicep = getMeasurement(m.armCircumference, 32.0);
    double wrist = getMeasurement(m.wrist, 20.0);
    double capHeight = bicep / 3;

    Map<String, Point2D> sp = {};
    List<PathSegment> paths = [];

    // Base point at the top center of the sleeve cap
    sp['Cap_Top'] = const Point2D(0, 0);
    sp['Bicep_Left'] = Point2D(-bicep / 2, capHeight);
    sp['Bicep_Right'] = Point2D(bicep / 2, capHeight);
    sp['Wrist_Left'] = Point2D(-wrist / 2, sleeveLength);
    sp['Wrist_Right'] = Point2D(wrist / 2, sleeveLength);
    sp['Wrist_Center'] = Point2D(0, sleeveLength);

    // Sleeve cap curve (front and back curves are simplified for MVP)
    paths.add(BezierCurve(
      sp['Bicep_Left']!,
      Point2D(-bicep / 2, capHeight / 2),
      Point2D(-bicep / 4, 0),
      sp['Cap_Top']!
    ));

    paths.add(BezierCurve(
      sp['Cap_Top']!,
      Point2D(bicep / 4, 0),
      Point2D(bicep / 2, capHeight / 2),
      sp['Bicep_Right']!
    ));

    // Underarm seams
    paths.add(LineSegment(sp['Bicep_Right']!, sp['Wrist_Right']!));

    // Hem curve
    paths.add(BezierCurve(
      sp['Wrist_Right']!,
      Point2D(wrist / 4, sleeveLength + 1),
      Point2D(-wrist / 4, sleeveLength + 1),
      sp['Wrist_Left']!
    ));

    paths.add(LineSegment(sp['Wrist_Left']!, sp['Bicep_Left']!));

    PatternPiece sleevePiece = PatternPiece(
      id: 'sleeve_piece',
      name: 'Sleeve',
      points: sp,
      paths: paths,
      grainLine: LineSegment(sp['Cap_Top']!, sp['Wrist_Center']!),
    );

    return [sleevePiece];
  }
}
