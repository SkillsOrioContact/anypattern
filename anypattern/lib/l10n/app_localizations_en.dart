// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'AnyPattern';

  @override
  String get homeMeasurementProfiles => 'Measurement Profiles';

  @override
  String get homeMeasurementProfilesDesc => 'Manage user measurements';

  @override
  String get homePatternLibrary => 'Pattern Library';

  @override
  String get homePatternLibraryDesc => 'Browse and draft patterns';

  @override
  String get homeMyProjects => 'My Projects';

  @override
  String get homeMyProjectsDesc => 'View saved pattern drafts';

  @override
  String get libraryTitle => 'Pattern Library';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get measurementsTitle => 'Measurements';

  @override
  String get projectsTitle => 'Projects';
}
