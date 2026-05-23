import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/pattern_library_screen.dart';
import '../../presentation/screens/pattern_editor_screen.dart';
import '../../presentation/screens/settings_screen.dart';
import '../../presentation/screens/measurement_profiles_screen.dart';
import '../../presentation/screens/projects_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/library',
      builder: (context, state) => const PatternLibraryScreen(),
    ),
    GoRoute(
      path: '/editor/:templateId',
      builder: (context, state) => PatternEditorScreen(
        templateId: state.pathParameters['templateId']!,
      ),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/measurements',
      builder: (context, state) => const MeasurementProfilesScreen(),
    ),
    GoRoute(
      path: '/projects',
      builder: (context, state) => const ProjectsScreen(),
    ),
  ],
);
