// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'AnyPattern';

  @override
  String get homeMeasurementProfiles => 'Perfiles de Medidas';

  @override
  String get homeMeasurementProfilesDesc =>
      'Gestionar las medidas de los usuarios';

  @override
  String get homePatternLibrary => 'Biblioteca de Patrones';

  @override
  String get homePatternLibraryDesc => 'Explorar y crear patrones';

  @override
  String get homeMyProjects => 'Mis Proyectos';

  @override
  String get homeMyProjectsDesc => 'Ver borradores de patrones guardados';

  @override
  String get libraryTitle => 'Biblioteca de Patrones';

  @override
  String get settingsTitle => 'Configuraciones';

  @override
  String get measurementsTitle => 'Medidas';

  @override
  String get projectsTitle => 'Proyectos';
}
