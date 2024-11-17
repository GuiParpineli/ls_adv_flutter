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
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        headlineLarge: TextStyle(color: Colors.amber),
        headlineMedium: TextStyle(color: Colors.amber),
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
