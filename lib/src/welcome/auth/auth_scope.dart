import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';

/// Скоп для блока авторизации
abstract class AuthScope {
  /// Получить блок
  static AuthBloc of(BuildContext context) {
    return BlocProvider.of<AuthBloc>(context);
  }

  /// Начать авторизацию
  static void start(BuildContext context) {
    of(context).add(const AuthEvent.start());
  }
}
