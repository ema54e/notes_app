import 'package:flutter/material.dart';

final ThemeData customLightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xFFF5F5F5),
  primaryColor: Color.fromARGB(255, 213, 226, 148),
  cardColor: Color(0xFFE0F2F1),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black87),
    bodySmall: TextStyle(color: Colors.blueGrey),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: Colors.white,
    textColor: Colors.black,
  ),
);

final ThemeData customDarkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF121212),
  primaryColor: Colors.teal,
  cardColor: Color(0xFF1E1E1E),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodySmall:
        TextStyle(fontSize: 18, color: Color.fromRGBO(225, 225, 225, 0.6)),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: Color(0xFF2C2C2C),
    textColor: Colors.white,
  ),
);
