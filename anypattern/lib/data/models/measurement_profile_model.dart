import 'package:isar/isar.dart';

part 'measurement_profile_model.g.dart';

@collection
class MeasurementProfileModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name; // e.g., 'Self', 'Client 1'

  bool isMetric = true;

  // Key measurements (in cm or inches based on isMetric)
  double? height;
  double? weight;

  // Upper body
  double? neck;
  double? chest;
  double? bust;
  double? waist;
  double? shoulder;
  double? backWidth;
  double? sleeveLength;
  double? armCircumference;
  double? wrist;

  // Lower body
  double? hip;
  double? thigh;
  double? knee;
  double? calf;
  double? ankle;
  double? inseam;
  double? outseam;
  double? crotchDepth;

  // Other
  double? bustHeight;
  double? bustDistance;
  double? waistLengthFront;
  double? waistLengthBack;
  double? hipHeight;

  // Custom measurements stored as JSON string map
  String customMeasurementsJson = '{}';

  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();
}
