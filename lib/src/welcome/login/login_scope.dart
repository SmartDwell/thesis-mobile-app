import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';

/// Скоп для блока авторизации
abstract class LoginScope {
  /// Получить блок
  static LoginBloc of(BuildContext context) {
    return BlocProvider.of<LoginBloc>(context);
  }

  /// Запросить код авторизации
  static void requestCode(BuildContext context, {required String login}) {
    of(context).add(LoginEvent.requestCode(login: login));
  }

  /// Верифицировать код авторизации
  static void verifyCode(
    BuildContext context, {
    required String tickedId,
    required String code,
  }) {
    of(context).add(LoginEvent.verifyCode(tickedId: tickedId, code: code));
  }
}
