import 'package:flutter/material.dart';

import 'theme_colors.dart';

final lightThemeData = ThemeData(
  scaffoldBackgroundColor: kDarkBackgroundColor,
  fontFamily: "SFProDisplay",
  appBarTheme: const AppBarTheme(
    backgroundColor: kDarkBackgroundColor,
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
  textTheme: TextTheme(
    headline4: const TextStyle(
      fontSize: 34,
      letterSpacing: 0.25,
      fontWeight: FontWeight.bold,
      color: kDarkTextPrimaryColor,
    ),
    headline5: const TextStyle(
      fontSize: 26,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
      color: kDarkTextPrimaryColor,
    ),
    headline6: const TextStyle(
      fontSize: 20,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w600,
      color: kDarkTextPrimaryColor,
    ),
    subtitle1: const TextStyle(
      fontSize: 16,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w600,
      color: kDarkTextPrimaryColor,
    ),
    subtitle2: TextStyle(
      fontSize: 16,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w400,
      color: kDarkTextSecondaryColor,
    ),
    bodyText1: const TextStyle(
      fontSize: 16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w400,
      color: kDarkTextPrimaryColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w400,
      color: kDarkTextSecondaryColor,
    ),
    caption: TextStyle(
      fontSize: 14,
      letterSpacing: 0.4,
      fontWeight: FontWeight.w400,
      color: kDarkTextSecondaryColor,
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
