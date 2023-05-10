import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../theme/theme_constants.dart';
import '../bloc/login_bloc.dart';
import '../login_scope.dart';

/// Страница запроса кода авторизации
class LoginVerifyCodeScreen extends StatelessWidget {
  const LoginVerifyCodeScreen({
    super.key,
    required this.ticketId,
    required this.username,
  });

  final String ticketId;
  final String username;

  @override
  Widget build(BuildContext context) {
    final codeEmptyNotifier = ValueNotifier<bool>(false);
    final codeController = TextEditingController();
    final errorNotifier = ValueNotifier<String>('');
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) => state.mapOrNull(
        successVerifyCode: (state) =>
            Navigator.pushReplacementNamed(context, '/navbar'),
        failureVerifyCode: (state) => errorNotifier.value = state.message,
      ),
      child: Padding(
        padding: kBottomSheepDefaultPadding,
        child: Column(
          children: [
            _LoginTitleWidget(
              username: username,
              codeController: codeController,
              codeEmptyNotifier: codeEmptyNotifier,
              errorNotifier: errorNotifier,
            ),
            const Spacer(),
            _LoginEnterButtonWidget(
              codeEmptyNotifier: codeEmptyNotifier,
              ticketId: ticketId,
              codeController: codeController,
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginEnterButtonWidget extends StatelessWidget {
  const _LoginEnterButtonWidget({
    Key? key,
    required this.codeEmptyNotifier,
    required this.ticketId,
    required this.codeController,
  }) : super(key: key);

  final ValueNotifier<bool> codeEmptyNotifier;
  final String ticketId;
  final TextEditingController codeController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: codeEmptyNotifier,
      builder: (context, codeIsEmpty, child) {
        return ThesisButton.fromText(
          isDisabled: codeIsEmpty,
          onPressed: () async {
            if (!codeIsEmpty) {
              LoginScope.verifyCode(
                context,
                tickedId: ticketId,
                code: codeController.text,
              );
            }
          },
          text: 'Войти',
        );
      },
    );
  }
}

class _LoginTitleWidget extends StatelessWidget {
  const _LoginTitleWidget({
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Здравствуйте, $username! Подтвердите смс-код.',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        Text(
          'Вам был отправлен смс-код. Введите его для подтверждения личности.',
          style: Theme.of(context).textTheme.titleSmall,
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
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
