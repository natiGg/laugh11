import "package:flutter/material.dart";

class Themes {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[100],
      colorScheme: ColorScheme.light().copyWith(secondary: Color(0xFFfafafa)));
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[900],
      colorScheme: ColorScheme.dark().copyWith(secondary: Colors.black38));
}
