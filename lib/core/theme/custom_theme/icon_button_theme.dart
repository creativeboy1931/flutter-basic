import 'package:basic/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MyIconButtonTheme {
  MyIconButtonTheme._();
  static IconButtonThemeData lightIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconSize: WidgetStateProperty.all(24.0),
      padding: WidgetStateProperty.all(EdgeInsets.all(8)),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return AppColors.surfaceLight;
        }
        return AppColors.backgroundLight;
      }),
      overlayColor: WidgetStateProperty.all(
        AppColors.accentLight.withOpacity(0.2),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
    ),
  );

  static IconButtonThemeData darkIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconSize: WidgetStateProperty.all(24.0),
      padding: WidgetStateProperty.all(EdgeInsets.all(8)),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return AppColors.accentDark;
        }
        return AppColors.primaryDark;
      }),
      overlayColor: WidgetStateProperty.all(
        AppColors.accentDark.withOpacity(0.2),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
    ),
  );
}