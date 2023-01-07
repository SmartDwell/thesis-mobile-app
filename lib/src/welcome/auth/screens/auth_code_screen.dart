import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth_index.dart';
import '../widgets/auth_code_widget.dart';

class AuthCodeScreen extends StatelessWidget {
  const AuthCodeScreen({
    super.key,
    required this.ticketId,
    required this.username,
  });

  final String ticketId;
  final String username;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthBaseState>(
      bloc: bloc,
      listener: (context, state) {
        if (state is AuthSuccessCodeVerifyState) {
          Navigator.pushReplacementNamed(context, '/navbar');
        }
      },
      child: BlocBuilder<AuthBloc, AuthBaseState>(
        bloc: bloc,
        builder: (context, state) {
          return AuthCodeWidget(
            ticketId: ticketId,
            username: username,
          );
        },
      ),
    );
  }
}
