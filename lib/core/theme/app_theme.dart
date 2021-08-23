import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();
  static final lightTheme = ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Color(0XFF4a3ac6),
      backgroundColor: const Color(0xFFFFFFFF),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
          headline6: TextStyle(color: const Color(0XFFFFFFFF)),
          subtitle1: TextStyle(fontWeight: FontWeight.w600),
          button: TextStyle(color: const Color(0XFFFFFFFF))));
}
