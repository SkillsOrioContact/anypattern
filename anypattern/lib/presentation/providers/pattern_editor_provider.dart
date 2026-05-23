import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/engine/geometry.dart';
import '../../core/engine/pattern_template.dart';
import '../../data/models/measurement_profile_model.dart';
import '../../domain/templates/basic_bodice.dart';
import '../../domain/templates/basic_skirt.dart';
import '../../domain/templates/basic_trousers.dart';
import '../../domain/templates/basic_sleeve.dart';
import '../../domain/templates/basic_collar.dart';
import '../../domain/templates/basic_hood.dart';
import '../../domain/templates/shift_dress.dart';
import '../../domain/templates/kurta.dart';

// Provides a default dummy measurement profile for the MVP preview
final defaultMeasurementProvider = Provider<MeasurementProfileModel>((ref) {
  return MeasurementProfileModel()
    ..name = 'Standard Medium'
    ..bust = 88.0
    ..waist = 70.0
    ..hip = 94.0;
});

// A registry of available templates
final templateRegistryProvider = Provider<Map<String, PatternTemplate>>((ref) {
  return {
    'basic_bodice': BasicBodiceTemplate(),
    'basic_skirt': BasicSkirtTemplate(),
    'basic_trousers': BasicTrousersTemplate(),
    'basic_sleeve': BasicSleeveTemplate(),
    'basic_collar': BasicCollarTemplate(),
    'basic_hood': BasicHoodTemplate(),
    'shift_dress': ShiftDressTemplate(),
    'kurta': KurtaTemplate(),
  };
});

// Provider for the drafted pieces based on the selected template ID
final draftedPiecesProvider = Provider.family<List<PatternPiece>, String>((ref, templateId) {
  final templates = ref.watch(templateRegistryProvider);
  final template = templates[templateId];

  if (template == null) {
    return [];
  }

  final measurements = ref.watch(defaultMeasurementProvider);

  return template.draft(measurements);
});
