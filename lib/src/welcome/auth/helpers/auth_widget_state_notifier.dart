import 'package:flutter/material.dart';

import 'auth_widget_states.dart';

class AuthWidgetStateNotifier with ChangeNotifier {
  final ValueNotifier<AuthWidgetStates> _stateNotifier =
      ValueNotifier<AuthWidgetStates>(AuthWidgetStates.AuthLogin);

  AuthWidgetStates get state => _stateNotifier.value;

  void changeState(AuthWidgetStates state) {
    _stateNotifier.value = state;
    debugPrint('AuthWidgetStateNotifier state = $state ');
    notifyListeners();
  }
}
