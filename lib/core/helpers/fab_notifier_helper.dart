import 'package:flutter/material.dart';

/// Помощник работы с Fab
class FabNotifierHelper with ChangeNotifier {
  bool _isShowing = true;
  bool _isLoading = false;

  bool get isShowing => _isShowing;
  bool get isLoading => _isLoading;

  /// Показать
  void show() {
    _isShowing = true;
    notifyListeners();
  }

  /// Скрыть
  void hide() {
    _isShowing = false;
    notifyListeners();
  }

  /// Показать загрузку
  void showLoading() {
    _isLoading = true;
    notifyListeners();
  }

  /// Скрыть загрузку
  void hideLoading() {
    _isLoading = false;
    notifyListeners();
  }
}
