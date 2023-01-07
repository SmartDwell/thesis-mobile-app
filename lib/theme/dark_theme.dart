import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme_colors.dart';

const _navigationBarStyle = TextStyle(
  fontSize: 12,
  letterSpacing: 0,
  fontWeight: FontWeight.w600,
);

final darkThemeData = ThemeData(
  scaffoldBackgroundColor: kDarkBackgroundColor,
  fontFamily: "SFProDisplay",
  appBarTheme: const AppBarTheme(
    backgroundColor: kDarkBackgroundColor,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: kDarkTextPrimaryColor,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    headline1: const TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w900,
      letterSpacing: -1.5,
      color: kDarkTextPrimaryColor,
    ),
    headline2: const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.5,
      color: kDarkTextPrimaryColor,
    ),
    headline3: const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: kDarkTextPrimaryColor,
    ),
    headline4: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      color: kDarkTextPrimaryColor,
    ),
    headline5: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: kDarkTextPrimaryColor,
    ),
    headline6: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      color: kDarkTextPrimaryColor,
    ),
    subtitle1: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: kDarkTextPrimaryColor,
    ),
    subtitle2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      color: kDarkTextSecondaryColor,
    ),
    bodyText1: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: kDarkTextPrimaryColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: kDarkTextSecondaryColor,
    ),
    button: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.25,
      color: kDarkTextPrimaryColor,
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: kDarkTextSecondaryColor,
    ),
    overline: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: kDarkTextSecondaryColor,
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
    backgroundColor: kDarkBackgroundColor,
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
      color: kDarkTextPrimaryColor,
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
      color: kDarkTextSecondaryColor.withOpacity(0.5),
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
        color: kDarkTextSecondaryColor.withOpacity(0.25),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kDarkTextSecondaryColor.withOpacity(0.25),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(16),
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
