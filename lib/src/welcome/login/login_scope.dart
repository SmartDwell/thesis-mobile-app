import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';

abstract class LoginScope {
  static LoginBloc of(BuildContext context) {
    return BlocProvider.of<LoginBloc>(context);
  }

  static void requestCode(BuildContext context, {required String login}) {
    of(context).add(LoginEvent.requestCode(login: login));
  }

  static void verifyCode(
    BuildContext context, {
    required String tickedId,
    required String code,
  }) {
    of(context).add(LoginEvent.verifyCode(tickedId: tickedId, code: code));
  }
}
