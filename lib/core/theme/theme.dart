import 'package:basic/core/theme/custom_theme/appbar_theme.dart';
import 'package:basic/core/theme/custom_theme/icon_button_theme.dart';
import 'package:basic/core/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Color(0xFF8D6E63),
    colorScheme: ColorScheme.light(
      primary: Color(0xFF8D6E63),
      secondary: Color(0xFF6D4C41),
      onSurface: Color(0xFFF8F4EC),
      surface: Colors.white,
      error: Color(0xFFD32F2F),
    ),
    scaffoldBackgroundColor: Color(0xFFF8F4EC),
    textTheme: GoogleFonts.robotoCondensedTextTheme().merge(MyTextTheme.lightTextTheme),
    appBarTheme: MyAppbarTheme.lightAppbarTheme,
    iconButtonTheme: MyIconButtonTheme.lightIconButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Color(0xFFBCAAA4),
    scaffoldBackgroundColor: Color(0xFF121212),
    colorScheme: ColorScheme.dark(
      primary: Color(0xFFBCAAA4),
      secondary: Color(0xFF8D6E63),
      onSurface: Color(0xFF121212),
      surface: Color(0xFF1E1E1E),
      error: Color(0xFFEF5350),
    ),
    textTheme: GoogleFonts.robotoCondensedTextTheme().merge(MyTextTheme.darkTextTheme),
    appBarTheme: MyAppbarTheme.darkAppbarTheme,
    iconButtonTheme: MyIconButtonTheme.darkIconButtonTheme,
  );

}