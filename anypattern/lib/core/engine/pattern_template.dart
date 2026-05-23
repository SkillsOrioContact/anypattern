import 'geometry.dart';
import '../../data/models/measurement_profile_model.dart';

/// Base class for all parametric pattern templates
abstract class PatternTemplate {
  final String id;
  final String name;
  final String description;

  PatternTemplate({
    required this.id,
    required this.name,
    required this.description,
  });

  /// The main drafting method. Takes a measurement profile and generates pattern pieces.
  /// Also accepts optional ease values or style adjustments.
  List<PatternPiece> draft(MeasurementProfileModel measurements, {Map<String, double> adjustments = const {}});

  /// Helper to get a measurement with a fallback, ensuring we don't crash
  double getMeasurement(double? value, double fallback) {
    if (value == null || value <= 0) return fallback;
    return value;
  }
}
