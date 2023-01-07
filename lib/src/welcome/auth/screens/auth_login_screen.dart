import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/thesis_bottom_sheep.dart';
import '../bloc/auth_index.dart';
import '../widgets/auth_login_widget.dart';
import 'auth_code_screen.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthBaseState>(
      bloc: bloc,
      listener: (context, state) {
        if (state is AuthSuccessLoginVerifyState) {
          ThesisBottomSheep.show(
            context,
            child: AuthCodeScreen(
              ticketId: state.ticketId,
              username: state.username,
            ),
          );
        }

        if (state is AuthLoginFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
      },
      child: const AuthLoginWidget(),
    );
  }
}
