import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';

abstract class AuthScope {
  static AuthBloc of(BuildContext context) {
    return BlocProvider.of<AuthBloc>(context);
  }

  static void start(BuildContext context) {
    of(context).add(const AuthEvent.start());
  }
}
