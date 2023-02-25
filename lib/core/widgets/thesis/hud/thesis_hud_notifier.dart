import 'package:flutter/material.dart';

class ThesisHudNotifier with ChangeNotifier {
  bool _show = false;
  String _caption = '';

  bool get isShow => _show;
  String get caption => _caption;

  void show([String caption = '']) {
    _show = true;
    _caption = caption;
    notifyListeners();
  }

  void dismiss() {
    _show = false;
    _caption = '';
    notifyListeners();
  }
}
