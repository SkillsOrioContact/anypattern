import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';

class BasicTrousersTemplate extends PatternTemplate {
  BasicTrousersTemplate() : super(
    id: 'basic_trousers',
    name: 'Basic Trousers',
    description: 'A standard straight leg trouser block.',
  );

  @override
  List<PatternPiece> draft(MeasurementProfileModel m, {Map<String, double> adjustments = const {}}) {
    double waist = getMeasurement(m.waist, 70.0);
    double hip = getMeasurement(m.hip, 96.0);
    double outseam = getMeasurement(m.outseam, 100.0);
    double inseam = getMeasurement(m.inseam, 75.0);
    double crotchDepth = outseam - inseam; // Simplified calculation

    double workingHip = hip / 4 + 1.0;

    // Front Trouser
    Map<String, Point2D> fp = {};
    List<PathSegment> fPaths = [];

    fp['Waist_CF'] = const Point2D(0, 0);
    fp['Waist_Side'] = Point2D(workingHip - 2, 0);
    fp['Hip_Side'] = Point2D(workingHip, crotchDepth / 2);
    fp['Crotch_Line'] = Point2D(workingHip + 4, crotchDepth); // Crotch extension
    fp['Hem_Inseam'] = Point2D(workingHip - 2, outseam);
    fp['Hem_Outseam'] = Point2D(2, outseam);
    fp['Crotch_CF'] = Point2D(0, crotchDepth);

    fPaths.add(LineSegment(fp['Waist_CF']!, fp['Waist_Side']!));
    fPaths.add(LineSegment(fp['Waist_Side']!, fp['Hip_Side']!));
    fPaths.add(LineSegment(fp['Hip_Side']!, fp['Hem_Outseam']!));
    fPaths.add(LineSegment(fp['Hem_Outseam']!, fp['Hem_Inseam']!));
    fPaths.add(LineSegment(fp['Hem_Inseam']!, fp['Crotch_Line']!));

    // Crotch curve
    fPaths.add(BezierCurve(
      fp['Crotch_Line']!,
      Point2D(workingHip, crotchDepth),
      Point2D(0, crotchDepth - 5),
      fp['Waist_CF']!
    ));

    PatternPiece frontPiece = PatternPiece(
      id: 'front_trouser',
      name: 'Front Trouser',
      points: fp,
      paths: fPaths,
    );

    return [frontPiece];
  }
}
