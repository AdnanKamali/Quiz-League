import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:quiz_league/routing/routes.dart';
import 'package:quiz_league/theme/app_theme.dart';

// --- MAIN APP ---
void main() => runApp(const MyAppWrapper());

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
    _themeNotifier.addListener(() => setState(() {}));
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
      title: 'Live Scores',
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
