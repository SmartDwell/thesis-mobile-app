import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

extension CurrentTheme on BuildContext {
  AdaptiveThemeManager<ThemeData> get _manager => AdaptiveTheme.of(this);

  ThemeData get currentTheme => _manager.theme;

  TextTheme get textTheme => currentTheme.textTheme;

  AdaptiveThemeMode get currentMode => _manager.mode;

  bool get isDarkMode => currentMode == AdaptiveThemeMode.dark;
}
