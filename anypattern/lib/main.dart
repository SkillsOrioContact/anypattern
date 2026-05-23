import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/di/injection.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'domain/services/ai_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  await setupDependencies();
  runApp(const ProviderScope(child: AnyPatternApp()));
}

class AnyPatternApp extends ConsumerStatefulWidget {
  const AnyPatternApp({super.key});

  @override
  ConsumerState<AnyPatternApp> createState() => _AnyPatternAppState();
}

class _AnyPatternAppState extends ConsumerState<AnyPatternApp> {
  @override
  void initState() {
    super.initState();
    _initServices();
  }

  Future<void> _initServices() async {
    final aiService = ref.read(aiServiceProvider);
    await aiService.init(ref.read(aiEnabledProvider.notifier), ref.read(aiKeyProvider.notifier));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AnyPattern',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: goRouter,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
