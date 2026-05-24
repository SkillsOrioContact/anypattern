import 'package:flutter_test/flutter_test.dart';
import 'package:anypattern/domain/templates/basic_bodice.dart';
import 'package:anypattern/data/models/measurement_profile_model.dart';
import 'package:anypattern/core/engine/geometry.dart';

void main() {
  group('Basic Bodice Template Tests', () {
    test('Drafts a piece correctly with default measurements', () {
      final template = BasicBodiceTemplate();
      final measurements = MeasurementProfileModel(); // Empty, relies on fallbacks

      final pieces = template.draft(measurements);

      expect(pieces, isNotEmpty);
      expect(pieces.length, 1);

      final frontBodice = pieces.first;
      expect(frontBodice.id, 'front_bodice');
      expect(frontBodice.paths, isNotEmpty);
      expect(frontBodice.points.containsKey('CF_Neck'), true);
      expect(frontBodice.points.containsKey('Bust_Apex'), true);
    });

    test('Drafts scaling changes with custom measurements', () {
      final template = BasicBodiceTemplate();

      final small = MeasurementProfileModel()..bust = 80.0..waistLengthFront = 40.0;
      final large = MeasurementProfileModel()..bust = 100.0..waistLengthFront = 44.0;

      final smallPiece = template.draft(small).first;
      final largePiece = template.draft(large).first;

      // Assert that Side_Waist X coordinate is larger for the larger bust
      expect(
        largePiece.points['Side_Waist']!.x > smallPiece.points['Side_Waist']!.x,
        isTrue,
        reason: 'Large bust should result in wider waist side point',
      );

      // Assert that CF_Waist Y coordinate is deeper for longer front waist length
      expect(
        largePiece.points['CF_Waist']!.y > smallPiece.points['CF_Waist']!.y,
        isTrue,
        reason: 'Large waist length should result in longer CF line',
      );
    });
  });
}