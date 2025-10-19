import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color soilBrown = Color(0xFF8B5E3C);
  static const Color tribalBlack = Color(0xFF1C1C1C);
  static const Color tribalGray1 = Color(0xFF2F2F2F);
  static const Color tribalGray2 = Color(0xFF4A4A4A);
  static const Color tribalGray3 = Color(0xFF666666);
  static const Color forestGreen = Color(0xFF4E6E58);

  static const Color leafYellow = Color(0xFFD4B668);
  static const Color sand = Color(0xFFF4E3C1);
  static const Color tribalGreen = Color(0xFFCBE0D3);
  static const Color tribalGrey = Color(0xFFE0E0E0);
  static const Color bambooGold = Color(0xFF9E7530);
  // static const Color tribalGreen = Color(0xFF688D58);

  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c757D);
  static const Color textWhite = Color(0xFFFFFFFF);

  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFf3f5ff);

  static const Color lightContainer = Color(0xFFf6f6f6);
  static const Color darkContainer = Color(0xFF272727);

  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c757D);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c30);
  static const Color info = Color(0xFF1976d2);

  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFe0e0e0);
  static const Color softGrey = Color(0xFFf4f4f4);
  static const Color lightGrey = Color(0xFFf9f9f9);

  // Light Theme
  static const Color primaryLight = Color(0xFF8D6E63);
  static const Color secondaryLight = Color(0xFF6D4C41);
  static const Color backgroundLight = Color(0xFFF8F4EC);
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color accentLight = Color(0xFFFF7043);
  static const Color dividerLight = Color(0xFFBCAAA4);
  static const Color gradientStartLight = AppColors.primaryLight; // 0xFF8D6E63
  static const Color gradientEndLight = AppColors.secondaryLight;

  // Dark Theme
  static const Color primaryDark = Color(0xFFBCAAA4);
  static const Color secondaryDark = Color(0xFF8D6E63);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color accentDark = Color(0xFFFFA726);
  static const Color dividerDark = Color(0xFF4E342E);
  static const Color gradientStartDark = AppColors.primaryDark; // 0xFFBCAAA4
  static const Color gradientEndDark = AppColors.secondaryDark;

  // Common
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // Add to AppColors
  static const Color lightMud = Color(
    0xFFEDE0D4,
  ); // Light muted brown background
  static const Color earthBrown = Color(
    0xFF6D4C41,
  ); // Selected item (already defined as secondaryLight)
  static const Color copperGold = Color(0xFFBCAAA4); // Unselected item
  static const Color terracottaRed = Color(
    0xFFD2691E,
  ); // Accent tone for dark theme
}