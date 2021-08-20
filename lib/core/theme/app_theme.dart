import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();
  static final lightTheme = ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Colors.blue.shade800,
      backgroundColor: const Color(0xFFFFFFFF),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
          headline6: TextStyle(color: const Color(0XFFFFFFFF)),
          button: TextStyle(color: const Color(0XFFFFFFFF))));
}
