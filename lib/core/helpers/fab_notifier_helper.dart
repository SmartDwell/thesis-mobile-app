import 'package:flutter/material.dart';

/// Помощник работы с Fab
class FabNotifierHelper with ChangeNotifier {
  bool _isShow = true;

  bool get isShow => _isShow;

  /// Показать
  void show() {
    _isShow = true;
    notifyListeners();
  }

  /// Скрыть
  void hide() {
    _isShow = false;
    notifyListeners();
  }
}
