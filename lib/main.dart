import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quiz_league/UI/0_common/controllers/settings_controller/settings_controller_cubit.dart';
import 'package:quiz_league/data/apis/settings_api/settings_api.dart';
import 'package:quiz_league/data/repository/settings_repository.dart';

import 'package:quiz_league/routing/routes.dart';
import 'package:quiz_league/theme/app_theme.dart';
import 'package:window_manager/window_manager.dart';

// --- MAIN APP ---
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  await windowManager.center();
  if (kDebugMode) {
    await windowManager.setSize(Size(1336, 720));
  } else {
    await windowManager.setFullScreen(true);
  }
  runApp(BlocProvider(
    create: (context) => SettingsControllerCubit(
        settingsRepository: SettingsRepository(settingsApi: SettingsApi(Dio())))
      ..getSettings(),
    child: const MyAppWrapper(),
  ));
}

class MyAppWrapper extends StatefulWidget {
  const MyAppWrapper({super.key});
  @override
  State<MyAppWrapper> createState() => _MyAppWrapperState();
}

class _MyAppWrapperState extends State<MyAppWrapper> {
  late ThemeNotifier _themeNotifier;
  @override
  void initState() {
    super.initState();
    _themeNotifier = ThemeNotifier(AppThemes.darkTheme);
  }

  @override
  Widget build(BuildContext context) => MyApp(themeNotifier: _themeNotifier);
}

class MyApp extends StatelessWidget {
  final ThemeNotifier themeNotifier;
  const MyApp({super.key, required this.themeNotifier});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'مسابقه لیگی',
      theme: themeNotifier.getTheme(),
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [Locale('fa', 'IR')],
    );
  }
}
