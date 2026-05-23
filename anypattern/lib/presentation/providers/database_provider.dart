import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../data/models/measurement_profile_model.dart';
import '../../data/models/project_model.dart';
import 'package:path_provider/path_provider.dart';

final isarProvider = FutureProvider<Isar>((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return Isar.open(
    [MeasurementProfileModelSchema, ProjectModelSchema],
    directory: dir.path,
  );
});

final measurementProfilesProvider = StreamProvider<List<MeasurementProfileModel>>((ref) async* {
  final isar = await ref.watch(isarProvider.future);
  yield* isar.measurementProfileModels.where().watch(fireImmediately: true);
});

final projectsProvider = StreamProvider<List<ProjectModel>>((ref) async* {
  final isar = await ref.watch(isarProvider.future);
  yield* isar.projectModels.where().watch(fireImmediately: true);
});
