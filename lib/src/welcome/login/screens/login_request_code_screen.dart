import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validators/validators.dart';

import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../theme/theme_constants.dart';
import '../../../../theme/theme_extention.dart';
import '../bloc/login_bloc.dart';
import '../login_scope.dart';
import '../login_sheep.dart';

/// Страница запроса кода авторизации
class LoginRequestCodeScreen extends StatelessWidget {
  const LoginRequestCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = TextEditingController(text: 'seljmov@list.ru');
    final buttonDisableNotifier =
        ValueNotifier<bool>(loginController.text.isEmpty);
    final formFieldKey = GlobalKey<FormFieldState>();
    final errorNotifier = ValueNotifier<String>('');
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) => state.mapOrNull(
        failureRequestCode: (state) => errorNotifier.value = state.message,
        successRequestCode: (state) => LoginSheep.showVerifyCodeScreen(
          context,
          ticketId: state.tickedId,
          username: state.username,
        ),
      ),
      child: Padding(
        padding: kBottomSheepDefaultPadding,
        child: Column(
          children: [
            _LoginTitleWidget(
              loginController: loginController,
              buttonDisableNotifier: buttonDisableNotifier,
              errorNotifier: errorNotifier,
              formFieldKey: formFieldKey,
            ),
            const Spacer(),
            _LoginButtonWidget(
              buttonDisableNotifier: buttonDisableNotifier,
              loginController: loginController,
              formFieldKey: formFieldKey,
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginButtonWidget extends StatelessWidget {
  const _LoginButtonWidget({
    Key? key,
    required this.buttonDisableNotifier,
    required this.loginController,
    required this.formFieldKey,
  }) : super(key: key);

  final ValueNotifier<bool> buttonDisableNotifier;
  final TextEditingController loginController;
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
              LoginScope.requestCode(
                context,
                login: loginController.text,
              );
            }
          },
          text: 'Продолжить',
        );
      },
    );
  }
}

class _LoginTitleWidget extends StatelessWidget {
  const _LoginTitleWidget({
    Key? key,
    required this.loginController,
    required this.buttonDisableNotifier,
    required this.errorNotifier,
    required this.formFieldKey,
  }) : super(key: key);

  final TextEditingController loginController;
  final ValueNotifier<bool> buttonDisableNotifier;
  final ValueNotifier<String> errorNotifier;
  final GlobalKey<FormFieldState> formFieldKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Введите вашу почту или номер телефона',
          style: context.textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        Text(
          'На ваш адрес электронной почты или номер телефона придет смс-код для входа в приложение',
          style: context.textTheme.titleSmall,
        ),
        const SizedBox(height: 25),
        TextFormField(
          key: formFieldKey,
          controller: loginController,
          onChanged: (value) {
            errorNotifier.value = '';
            final validationState = formFieldKey.currentState?.validate();
            buttonDisableNotifier.value = !(validationState ?? true);
          },
          validator: _textFieldValidator,
          decoration: const InputDecoration(
            hintText: 'Почта или номер телефона',
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
                  color: context.currentTheme.errorColor,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  String? _textFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле не может быть пустым.';
    }

    if (isNumeric(value) && (!value.startsWith('79') || value.length != 11)) {
      return 'Неверный формат данных. Введите номер телефона в формате 79XXXXXXXXX.';
    }

    if (!isNumeric(value) && !isEmail(value)) {
      return 'Неверный формат данных. Введите почту в формате example@mail.ru или номер телефона в формате 7XXXXXXXXXX.';
    }
    return null;
  }
}
