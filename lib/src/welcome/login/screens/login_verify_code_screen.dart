import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_constants.dart';
import '../../../../theme/theme_extention.dart';
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
    final buttonDisableNotifier = ValueNotifier<bool>(true);
    final codeController = TextEditingController();
    final formFieldKey = GlobalKey<FormFieldState>();
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
              buttonDisableNotifier: buttonDisableNotifier,
              errorNotifier: errorNotifier,
              formFieldKey: formFieldKey,
            ),
            const Spacer(),
            _LoginEnterButtonWidget(
              buttonDisableNotifier: buttonDisableNotifier,
              ticketId: ticketId,
              codeController: codeController,
              formFieldKey: formFieldKey,
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
    required this.buttonDisableNotifier,
    required this.ticketId,
    required this.codeController,
    required this.formFieldKey,
  }) : super(key: key);

  final ValueNotifier<bool> buttonDisableNotifier;
  final String ticketId;
  final TextEditingController codeController;
  final GlobalKey<FormFieldState> formFieldKey;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: buttonDisableNotifier,
      builder: (context, isDisable, child) {
        return ThesisButton.fromText(
          isDisabled: isDisable,
          onPressed: () async {
            if (!isDisable) {
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
    required this.buttonDisableNotifier,
    required this.errorNotifier,
    required this.formFieldKey,
  }) : super(key: key);

  final String username;
  final TextEditingController codeController;
  final ValueNotifier<bool> buttonDisableNotifier;
  final ValueNotifier<String> errorNotifier;
  final GlobalKey<FormFieldState> formFieldKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Здравствуйте, $username! Подтвердите смс-код.',
          style: context.textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        Text(
          'Вам был отправлен смс-код. Введите его для подтверждения личности.',
          style: context.textTheme.titleSmall,
        ),
        const SizedBox(height: 25),
        TextFormField(
          key: formFieldKey,
          controller: codeController,
          onChanged: (value) {
            errorNotifier.value = '';
            final validationState = formFieldKey.currentState?.validate();
            buttonDisableNotifier.value = !(validationState ?? true);
          },
          validator: _codeValidator,
          maxLength: 6,
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
                style: context.textTheme.bodyMedium?.copyWith(
                  color: kRedColor,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  String? _codeValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле не может быть пустым.';
    }

    if (value.length != 6) {
      return 'Неверный формат данных. Введите 6-значный код.';
    }
    return null;
  }
}
