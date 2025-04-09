// lib/theme/theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Color(0xFF1E2A38),
      secondary: Color(0xFFC8A978),
      surface: Color(0xFFF4ECE3),
      onPrimary: Colors.white,
      onSurface: Colors.black87,
    ),
    scaffoldBackgroundColor: Color(0xFFFDF6ED),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Color(0xFF1E2A38)),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFDF6ED),
      foregroundColor: Color(0xFF1E2A38),
      elevation: 0,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF4ECE3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
