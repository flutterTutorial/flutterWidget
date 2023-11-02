import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeDataCollection.baseTheme;

  ThemeData get themeData => _themeData;

  void changeTheme(Color baseColor) {
    _themeData = ThemeDataCollection.getThemeData(baseColor);
    notifyListeners();
  }
}

class ThemeDataCollection {
  static final baseTheme = _getThemeData(Colors.blue);
  static final orangeTheme = _getThemeData(Colors.orange);
  static final greenTheme = _getThemeData(Colors.green);
  static final redTheme = _getThemeData(Colors.red);
  static final brownTheme = _getThemeData(Colors.brown);
  static final purpleTheme = _getThemeData(Colors.purple);

  static ThemeData _getThemeData(MaterialColor color) {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Color.fromARGB(255, 14, 6, 126)),

        fillColor: MaterialStateProperty.all(
            Colors.transparent), // Replace Colors.green with your desired color
        visualDensity: VisualDensity.adaptivePlatformDensity,
        side: BorderSide(color: Colors.black),
      ),
      useMaterial3: true,
      primarySwatch: color,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  static ThemeData getThemeData(Color baseColor) {
    switch (baseColor) {
      case Colors.orange:
        return orangeTheme;
      case Colors.green:
        return greenTheme;
      case Colors.red:
        return redTheme;
      case Colors.brown:
        return brownTheme;
      case Colors.purple:
        return purpleTheme;
      default:
        return baseTheme;
    }
  }
}
