import 'package:flutter/material.dart';

class Apptheme {
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color grey = Color(0x7EFFFFFF);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: white,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: black,
          centerTitle: true),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          titleMedium: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: black),
          bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          labelMedium: TextStyle(color: Color(0xffA0A0A0))));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: black,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: white,
          centerTitle: true),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: white,
          ),
          titleMedium: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: white),
          bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          labelMedium: TextStyle(color: Color(0xffA0A0A0))));
}
