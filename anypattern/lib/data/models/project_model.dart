import 'package:isar/isar.dart';

part 'project_model.g.dart';

@collection
class ProjectModel {
  Id id = Isar.autoIncrement;

  late String name;
  late String templateId; // Identifier for the parametric engine to load

  // Link to measurement profile
  int? measurementProfileId;

  // Pattern specific adjustments or state, stored as JSON string
  String draftStateJson = '{}';

  // Optional thumbnail or snapshot of current draft
  String? thumbnailPath;

  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();
}
