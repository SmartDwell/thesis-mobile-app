import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/thesis/thesis_base_page.dart';
import '../../../../core/widgets/thesis/thesis_button.dart';
import '../bloc/auth_index.dart';

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
    final codeEmptyNotifier = ValueNotifier<bool>(false);
    final codeIsSendingNotifier = ValueNotifier<bool>(false);
    final codeController = TextEditingController();
    final errorNotifier = ValueNotifier<String>('');
    final bloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthBaseState>(
      bloc: bloc,
      listener: (context, state) {
        if (state is AuthSuccessCodeVerifyState) {
          bloc.add(const AuthSuccessEvent());
          //Navigator.pushReplacementNamed(context, '/navbar');
        }

        if (state is AuthCodeFailureState) {
          errorNotifier.value = state.message;
        }
        codeIsSendingNotifier.value = false;
      },
      child: ThesisBasePage(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Column(
            children: [
              _AuthCodeTitleWidget(
                username: username,
                codeController: codeController,
                codeEmptyNotifier: codeEmptyNotifier,
                errorNotifier: errorNotifier,
              ),
              const Spacer(),
              _AuthCodeButtonWidget(
                codeEmptyNotifier: codeEmptyNotifier,
                codeIsSendingNotifier: codeIsSendingNotifier,
                bloc: bloc,
                ticketId: ticketId,
                codeController: codeController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AuthCodeButtonWidget extends StatelessWidget {
  const _AuthCodeButtonWidget({
    Key? key,
    required this.codeEmptyNotifier,
    required this.codeIsSendingNotifier,
    required this.bloc,
    required this.ticketId,
    required this.codeController,
  }) : super(key: key);

  final ValueNotifier<bool> codeEmptyNotifier;
  final ValueNotifier<bool> codeIsSendingNotifier;
  final AuthBloc bloc;
  final String ticketId;
  final TextEditingController codeController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: codeEmptyNotifier,
      builder: (context, codeIsEmpty, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: codeIsSendingNotifier,
          builder: (context, codeIsSending, child) {
            return ThesisButton.fromText(
              isDisabled: codeIsEmpty,
              isLoading: codeIsSending,
              onPressed: () {
                codeIsSendingNotifier.value = true;
                if (!codeIsEmpty && !codeIsSending) {
                  bloc.add(
                    AuthVerifyCodeEvent(
                      ticketId,
                      codeController.text,
                    ),
                  );
                }
                codeIsSendingNotifier.value = false;
              },
              text: 'Войти',
            );
          },
        );
      },
    );
  }
}

class _AuthCodeTitleWidget extends StatelessWidget {
  const _AuthCodeTitleWidget({
    Key? key,
    required this.username,
    required this.codeController,
    required this.codeEmptyNotifier,
    required this.errorNotifier,
  }) : super(key: key);

  final String username;
  final TextEditingController codeController;
  final ValueNotifier<bool> codeEmptyNotifier;
  final ValueNotifier<String> errorNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Здравствуйте, $username! Подтвердите смс-код.',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 16),
        Text(
          'Вам был отправлен смс-код. Введите его для подтверждения личности.',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(height: 25),
        TextFormField(
          controller: codeController,
          onChanged: (value) {
            codeEmptyNotifier.value = value.isEmpty;
          },
          decoration: const InputDecoration(
            hintText: 'Смс-код',
          ),
        ),
        ValueListenableBuilder<String>(
          valueListenable: errorNotifier,
          builder: (context, error, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                error,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).errorColor,
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}
