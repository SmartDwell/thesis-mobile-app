import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme_colors.dart';

const _navigationBarStyle = TextStyle(
  fontSize: 12,
  letterSpacing: 0,
  fontWeight: FontWeight.w600,
);

/// Светлая тема тема
final lightThemeData = ThemeData(
  scaffoldBackgroundColor: kLightBackgroundColor,
  fontFamily: "SFProDisplay",
  appBarTheme: const AppBarTheme(
    backgroundColor: kLightBackgroundColor,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: kLightTextPrimaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w900,
      letterSpacing: -1.5,
      color: kLightTextPrimaryColor,
    ),
    displayMedium: const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.5,
      color: kLightTextPrimaryColor,
    ),
    displaySmall: const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: kLightTextPrimaryColor,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      color: kLightTextPrimaryColor,
    ),
    headlineSmall: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: kLightTextPrimaryColor,
    ),
    titleLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      color: kLightTextPrimaryColor,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: kLightTextPrimaryColor,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      color: kLightTextSecondaryColor,
    ),
    labelLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.25,
      color: kLightTextPrimaryColor,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: kLightTextSecondaryColor,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: kLightTextPrimaryColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: kLightTextSecondaryColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: kLightTextSecondaryColor,
    ),
  ),
  primaryColor: kPrimaryColor,
  primaryColorLight: kPrimaryLightColor,
  errorColor: kRedColor,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    selectedLabelStyle: _navigationBarStyle.copyWith(color: kPrimaryLightColor),
    unselectedLabelStyle: _navigationBarStyle.copyWith(color: kGray1Color),
    type: BottomNavigationBarType.fixed,
    backgroundColor: kLightBackgroundColor,
    selectedItemColor: kPrimaryLightColor,
    unselectedItemColor: kGray1Color,
    selectedIconTheme: const IconThemeData(
      color: kPrimaryColor,
    ),
    unselectedIconTheme: const IconThemeData(
      color: kGray1Color,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kPrimaryColor,
    selectionColor: kPrimaryColor.withOpacity(0.25),
    selectionHandleColor: kPrimaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    errorMaxLines: 4,
    labelStyle: const TextStyle(
      fontSize: 16,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w600,
      color: kLightTextPrimaryColor,
    ),
    errorStyle: const TextStyle(
      fontSize: 14,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w400,
      color: kRedColor,
    ),
    hintStyle: TextStyle(
      fontSize: 16,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w400,
      color: kLightTextSecondaryColor.withOpacity(0.5),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kRedColor.withOpacity(0.5),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kRedColor.withOpacity(0.5),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kLightTextSecondaryColor.withOpacity(0.25),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kLightTextSecondaryColor.withOpacity(0.25),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  cardTheme: CardTheme(
    color: kLightBackgroundSecondaryColor,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  ),
);
