import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFFFC4664);

const List<Color> _colorTheme = [
  _primaryColor,
  Colors.white,
  Color(0xFFF5F5F5),
  Color(0xFF030303),
  Color(0xFFAA46FC),
  Color(0xFF00008C),
  Color(0xFFD5D5D5),
  Color(0xFFFFECF3),
  Color(0xFFFF3B30),
  Color(0xFF4CD964),
  Color(0xFF858585),
];

class AppTheme{

  final int selectedThemeColor;

  AppTheme({
    this.selectedThemeColor = 0
}):assert(selectedThemeColor>=0 && selectedThemeColor < _colorTheme.length);

  ThemeData theme(){
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorTheme[selectedThemeColor],
        appBarTheme: AppBarTheme(
          color: _colorTheme[selectedThemeColor],
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontFamily: 'Cabin',
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.purpleAccent,
            fontFamily: 'Cabin',
          ),
          bodyLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.deepPurple,
            fontFamily: 'Roboto',
          ),
        )
    );
  }
}