import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Colors.black,
      hintColor: Colors.amber,
      scaffoldBackgroundColor: Colors.black87,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.amber,
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.amber,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        headlineLarge: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: Colors.white),
        displayLarge: TextStyle(color: Colors.white),
        displayMedium: TextStyle(color: Colors.white),
      ),
      cardTheme: const CardTheme(
        color: Colors.black,
        shadowColor: Colors.amber,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.amber,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
