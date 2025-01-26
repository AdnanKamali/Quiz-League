import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppTheme {
  // رنگ‌ها
  static const Color primaryColor = Colors.indigoAccent;
  static const Color selectedOptionColor = Color(0xFFFFCA28);
  static const Color backgroundColor = Colors.indigo;
  static const Color textColor = Colors.white;
  static const Color failColor = Color(0xFFE53935);
  static const Color successColor = Color(0xFF43A047);

  // فونت‌ها
  static const String fontFamily = "Pelak";

  // تم تاریک
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.indigoAccent,
    disabledColor: Colors.grey.shade600,
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
