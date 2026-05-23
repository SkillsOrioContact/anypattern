import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../data/models/measurement_profile_model.dart';
import '../../data/models/project_model.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Setup Hive for settings/cache
  await Hive.initFlutter();
  final settingsBox = await Hive.openBox('settings');
  getIt.registerSingleton<Box>(settingsBox, instanceName: 'settingsBox');

  // Setup Isar for local database
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [MeasurementProfileModelSchema, ProjectModelSchema],
    directory: dir.path,
  );
  getIt.registerSingleton<Isar>(isar);
}
