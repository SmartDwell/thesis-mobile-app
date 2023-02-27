import 'package:flutter/material.dart';

import 'theme_colors.dart';

/// Светлая тема
final lightThemeData = ThemeData(
  scaffoldBackgroundColor: kDarkBackgroundColor,
  fontFamily: "SFProDisplay",
  appBarTheme: const AppBarTheme(
    backgroundColor: kDarkBackgroundColor,
  ),
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w900,
      letterSpacing: -1.5,
      color: kDarkTextPrimaryColor,
    ),
    displayMedium: const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.5,
      color: kDarkTextPrimaryColor,
    ),
    displaySmall: const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: kDarkTextPrimaryColor,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      color: kDarkTextPrimaryColor,
    ),
    headlineSmall: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: kDarkTextPrimaryColor,
    ),
    titleLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      color: kDarkTextPrimaryColor,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: kDarkTextPrimaryColor,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      color: kDarkTextSecondaryColor,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: kDarkTextPrimaryColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: kDarkTextSecondaryColor,
    ),
    labelLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.25,
      color: kDarkTextPrimaryColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: kDarkTextSecondaryColor,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: kDarkTextSecondaryColor,
    ),
  ),
  primaryColor: kPrimaryColor,
  primaryColorLight: kPrimaryLightColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kDarkBackgroundColor,
    selectedItemColor: kPrimaryColor,
    unselectedItemColor: kGray2Color,
    selectedIconTheme: IconThemeData(
      color: kPrimaryColor,
    ),
    unselectedIconTheme: IconThemeData(
      color: kGray2Color,
    ),
    selectedLabelStyle: TextStyle(
      color: kPrimaryColor,
    ),
    unselectedLabelStyle: TextStyle(
      color: kGray2Color,
    ),
  ),
  cardTheme: CardTheme(
    color: kDarkBackgroundSecondaryColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  ),
);
