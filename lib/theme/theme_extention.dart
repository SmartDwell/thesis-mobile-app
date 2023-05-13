import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'theme_colors.dart';

extension CurrentTheme on BuildContext {
  AdaptiveThemeManager<ThemeData> get _manager => AdaptiveTheme.of(this);

  ThemeData get currentTheme => _manager.theme;

  TextTheme get textTheme => currentTheme.textTheme;

  Color get textPrimaryColor =>
      isDarkMode ? kDarkTextPrimaryColor : kLightTextPrimaryColor;

  Color get textSecondaryColor =>
      isDarkMode ? kDarkTextSecondaryColor : kLightBackgroundSecondaryColor;

  AdaptiveThemeMode get currentMode => _manager.mode;

  bool get isDarkMode => currentMode == AdaptiveThemeMode.dark;
}
