import 'package:flutter/material.dart';

class ThesisProgressHudProvider with ChangeNotifier {
  bool _isShow = false;

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
