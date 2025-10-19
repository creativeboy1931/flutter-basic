import 'package:basic/core/constants/app_colors.dart';
import 'package:basic/core/constants/my_size.dart';
import 'package:flutter/material.dart';


class MyAppbarTheme {
  static double iconSize = MySizes.iconMd;
  static double titleSize = MySizes.fontSizeLg;
  MyAppbarTheme._();

  static AppBarTheme lightAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primaryLight,
    surfaceTintColor: AppColors.transparent,
    foregroundColor: AppColors.surfaceLight,
    iconTheme: IconThemeData(color: AppColors.white, size: iconSize),
    actionsIconTheme: IconThemeData(color: AppColors.white, size: iconSize),
    titleTextStyle: TextStyle(
      fontSize: titleSize,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
  );

  static AppBarTheme darkAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primaryDark,
    surfaceTintColor: AppColors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: iconSize),
    actionsIconTheme: IconThemeData(color: AppColors.white, size: iconSize),
    titleTextStyle: TextStyle(
      fontSize: titleSize,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
  );
}