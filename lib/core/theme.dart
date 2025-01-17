import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppTheme {
  // رنگ‌ها
  static const Color primaryColor = Color(0xFF1E88E5);
  static const Color selectedOptionColor = Color(0xFFFFCA28);
  static const Color backgroundColor = Colors.indigo;
  static const Color forgroundColor = Colors.indigoAccent;
  static const Color textColor = Colors.white;
  static const Color failColor = Color(0xFFE53935);
  static const Color successColor = Color(0xFF43A047);

  // فونت‌ها
  static const String fontFamily = "Pelak";

  // تم روشن
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: fontFamily,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontSize: 32.sp, fontWeight: FontWeight.bold, color: textColor),
      headlineMedium: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.w600, color: textColor),
      bodyLarge: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.normal, color: textColor),
      bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: textColor.withOpacity(0.7)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: selectedOptionColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );

  // تم تاریک
  static final ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.indigo,
    fontFamily: fontFamily,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 32.sp, color: textColor),
      headlineMedium: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.w600, color: textColor),
      headlineSmall: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.w600, color: textColor),
      labelLarge: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.w300, color: textColor),
      labelMedium: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.w300, color: textColor),
      labelSmall: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.w300, color: textColor),
      bodyLarge: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
          color: Colors.white70),
      bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: Colors.white60),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: selectedOptionColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
