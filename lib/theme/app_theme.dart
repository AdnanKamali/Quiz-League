import "package:flutter/material.dart";

class AppColors {
  // Light Theme Colors
  static const Color lightScaffold = Color(0xFFF5F5F7);
  static const Color lightPrimary = Color(0xFFFFFFFF);
  static const Color lightSecondary = Color(0xFFE8E8E8);
  static const Color lightText = Color(0xFF1D1D1F);
  static const Color lightAccent = Colors.blue;

  // Dark Theme Colors
  static const Color darkScaffold = Color(0xFF121212);
  static const Color darkPrimary = Color(0xFF1E1E1E);
  static const Color darkSecondary = Color(0xFF2A2A2A);
  static const Color darkText = Color(0xFFE1E1E1);
  static const Color darkAccent = Colors.tealAccent;
}

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: "Pelak",
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffold,
    primaryColor: AppColors.lightPrimary,
    colorScheme: const ColorScheme.light(
      surface: AppColors.lightPrimary,
      onSurface: AppColors.lightText,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      elevation: 0.5,
      iconTheme: IconThemeData(color: AppColors.lightText),
      titleTextStyle: TextStyle(
          color: AppColors.lightText,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Pelak'),
    ),
    cardColor: AppColors.lightPrimary,
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: "Pelak",
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkScaffold,
    primaryColor: AppColors.darkPrimary,
    colorScheme: const ColorScheme.dark(
      surface: AppColors.darkPrimary,
      onSurface: AppColors.darkText,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.darkText),
      titleTextStyle: TextStyle(
          color: AppColors.darkText,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Pelak'),
    ),
    cardColor: AppColors.darkPrimary,
  );
}

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;
  ThemeNotifier(this._themeData);
  ThemeData getTheme() => _themeData;
  bool isDarkMode() => _themeData.brightness == Brightness.dark;

  void toggleTheme() {
    _themeData = isDarkMode() ? AppThemes.lightTheme : AppThemes.darkTheme;
    notifyListeners();
  }
}
