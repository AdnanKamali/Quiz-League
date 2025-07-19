// کلاس اصلی برای تعریف تم‌ها
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // --- پالت رنگی برای تم روشن ---
  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006A62),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF74F8E9),
    onPrimaryContainer: Color(0xFF00201D),
    secondary: Color(0xFF4A635F),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFCCE8E3),
    onSecondaryContainer: Color(0xFF05201C),
    tertiary: Color(0xFF865300),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFDDB9),
    onTertiaryContainer: Color(0xFF2B1700),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    surface: Color(0xFFFAFDFB),
    onSurface: Color(0xFF191C1C),
    onSurfaceVariant: Color(0xFF3F4947),
    outline: Color(0xFF6F7977),
    shadow: Color(0xFF000000),
    inverseSurface: Color(0xFF2E3130),
    onInverseSurface: Color(0xFFEFF1EF),
    inversePrimary: Color(0xFF53DBCF),
  );

  // --- پالت رنگی برای تم تیره ---
  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF53DBCF),
    onPrimary: Color(0xFF003732),
    primaryContainer: Color(0xFF005049),
    onPrimaryContainer: Color(0xFF74F8E9),
    secondary: Color(0xFFB0CCC7),
    onSecondary: Color(0xFF1C3531),
    secondaryContainer: Color(0xFF334B47),
    onSecondaryContainer: Color(0xFFCCE8E3),
    tertiary: Color(0xFFFFB962),
    onTertiary: Color(0xFF472A00),
    tertiaryContainer: Color(0xFF663E00),
    onTertiaryContainer: Color(0xFFFFDDB9),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    surface: Color(0xFF191C1C),
    onSurface: Color(0xFFE1E3E2),
    onSurfaceVariant: Color(0xFFBFC9C6),
    outline: Color(0xFF899390),
    shadow: Color(0xFF000000),
    inverseSurface: Color(0xFFE1E3E2),
    onInverseSurface: Color(0xFF191C1C),
    inversePrimary: Color(0xFF006A62),
  );

  // تعریف تم روشن با استفاده از پالت رنگی سفارشی
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );

  // تعریف تم تیره با استفاده از پالت رنگی سفارشی
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}
