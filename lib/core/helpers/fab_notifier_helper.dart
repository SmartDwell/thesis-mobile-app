import 'package:flutter/material.dart';

class FabNotifierHelper with ChangeNotifier {
  bool _isShow = true;

  bool get isShow => _isShow;

  void show() {
    _isShow = true;
    notifyListeners();
  }

  void hide() {
    _isShow = false;
    notifyListeners();
  }
}
