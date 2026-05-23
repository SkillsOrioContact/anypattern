import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class BasicCollarTemplate extends PatternTemplate {
  BasicCollarTemplate() : super(
    id: 'basic_collar',
    name: 'Basic Shirt Collar',
    description: 'A standard shirt collar with stand.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    double neck = getMeasurement(m.neck, 38.0);
    double halfNeck = neck / 2;
    double collarWidth = adjustments['collarWidth'] ?? 4.0;
    double standHeight = adjustments['standHeight'] ?? 3.0;

    // Collar Fall (Top part)
    Map<String, Point2D> cp = {};
    List<PathSegment> cpPaths = [];

    cp['CB_Collar_Bottom'] = const Point2D(0, 0);
    cp['CB_Collar_Top'] = Point2D(0, -collarWidth);
    cp['CF_Collar_Bottom'] = Point2D(halfNeck, 0);
    cp['CF_Collar_Top'] = Point2D(halfNeck + 1.5, -collarWidth - 1); // Collar point

    cpPaths.add(LineSegment(cp['CB_Collar_Top']!, cp['CB_Collar_Bottom']!));
    cpPaths.add(BezierCurve(
      cp['CB_Collar_Bottom']!,
      Point2D(halfNeck * 0.5, 0),
      Point2D(halfNeck * 0.8, -0.5),
      cp['CF_Collar_Bottom']!
    ));
    cpPaths.add(LineSegment(cp['CF_Collar_Bottom']!, cp['CF_Collar_Top']!));
    cpPaths.add(LineSegment(cp['CF_Collar_Top']!, cp['CB_Collar_Top']!));

    PatternPiece collarPiece = PatternPiece(
      id: 'collar_fall',
      name: 'Collar Fall (Cut on fold)',
      points: cp,
      paths: cpPaths,
    );

    // Collar Stand
    Map<String, Point2D> sp = {};
    List<PathSegment> spPaths = [];

    // Position below collar
    double standYOffset = 2.0;
    sp['CB_Stand_Top'] = Point2D(0, standYOffset);
    sp['CB_Stand_Bottom'] = Point2D(0, standYOffset + standHeight);
    sp['CF_Stand_Top'] = Point2D(halfNeck, standYOffset - 0.5);
    sp['CF_Stand_Bottom'] = Point2D(halfNeck, standYOffset + standHeight - 1);
    sp['Stand_Button_Ext'] = Point2D(halfNeck + 1.5, standYOffset + standHeight / 2 - 0.5); // Curved tip

    spPaths.add(LineSegment(sp['CB_Stand_Top']!, sp['CB_Stand_Bottom']!));
    spPaths.add(BezierCurve(
      sp['CB_Stand_Bottom']!,
      Point2D(halfNeck * 0.5, standYOffset + standHeight),
      Point2D(halfNeck * 0.8, standYOffset + standHeight - 0.5),
      sp['CF_Stand_Bottom']!
    ));
    spPaths.add(BezierCurve(
      sp['CF_Stand_Bottom']!,
      Point2D(halfNeck + 1.5, standYOffset + standHeight - 0.5),
      Point2D(halfNeck + 1.5, standYOffset - 0.5),
      sp['Stand_Button_Ext']!
    ));
    spPaths.add(BezierCurve(
      sp['Stand_Button_Ext']!,
      Point2D(halfNeck + 0.5, standYOffset - 0.5),
      Point2D(halfNeck * 0.8, standYOffset - 0.5),
      sp['CF_Stand_Top']!
    ));
    spPaths.add(BezierCurve(
      sp['CF_Stand_Top']!,
      Point2D(halfNeck * 0.5, standYOffset),
      Point2D(halfNeck * 0.2, standYOffset),
      sp['CB_Stand_Top']!
    ));

    PatternPiece standPiece = PatternPiece(
      id: 'collar_stand',
      name: 'Collar Stand (Cut on fold)',
      points: sp,
      paths: spPaths,
    );

    return [collarPiece, standPiece];
  }
}
