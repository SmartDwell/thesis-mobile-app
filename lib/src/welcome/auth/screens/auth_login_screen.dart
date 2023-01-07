import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validators/validators.dart';

import '../../../../core/widgets/thesis/thesis_base_page.dart';
import '../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../core/widgets/thesis/thesis_button.dart';
import '../bloc/auth_index.dart';
import 'auth_code_screen.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginEmptyNotifier = ValueNotifier<bool>(false);
    final loginIsSendingNotifier = ValueNotifier<bool>(false);
    final loginController = TextEditingController(text: 'seljmov@list.ru');
    final formFieldKey = GlobalKey<FormFieldState>();
    final errorNotifier = ValueNotifier<String>('');
    final bloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthBaseState>(
      bloc: bloc,
      listener: (context, state) {
        errorNotifier.value = '';
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
          errorNotifier.value = state.message;
        }
        loginIsSendingNotifier.value = false;
      },
      child: ThesisBasePage(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Column(
            children: [
              _AuthLoginTitleWidget(
                loginController: loginController,
                loginEmptyNotifier: loginEmptyNotifier,
                errorNotifier: errorNotifier,
                formFieldKey: formFieldKey,
              ),
              const Spacer(),
              _AuthLoginButtonWidget(
                loginEmptyNotifier: loginEmptyNotifier,
                loginIsSendingNotifier: loginIsSendingNotifier,
                bloc: bloc,
                loginController: loginController,
                formFieldKey: formFieldKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AuthLoginButtonWidget extends StatelessWidget {
  const _AuthLoginButtonWidget({
    Key? key,
    required this.loginEmptyNotifier,
    required this.loginIsSendingNotifier,
    required this.bloc,
    required this.loginController,
    required this.formFieldKey,
  }) : super(key: key);

  final ValueNotifier<bool> loginEmptyNotifier;
  final ValueNotifier<bool> loginIsSendingNotifier;
  final AuthBloc bloc;
  final TextEditingController loginController;
  final GlobalKey<FormFieldState> formFieldKey;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginEmptyNotifier,
      builder: (context, loginIsEmpty, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: loginIsSendingNotifier,
          builder: (context, loginIsSending, child) {
            return ThesisButton.fromText(
              isDisabled: loginIsEmpty,
              isLoading: loginIsSending,
              onPressed: () {
                loginIsSendingNotifier.value = true;
                if (formFieldKey.currentState?.validate() ?? false) {
                  bloc.add(
                    AuthRequestCodeEvent(
                      loginController.text,
                    ),
                  );
                } else {
                  loginIsSendingNotifier.value = false;
                }
              },
              text: 'Продолжить',
            );
          },
        );
      },
    );
  }
}

class _AuthLoginTitleWidget extends StatelessWidget {
  const _AuthLoginTitleWidget({
    Key? key,
    required this.loginController,
    required this.loginEmptyNotifier,
    required this.errorNotifier,
    required this.formFieldKey,
  }) : super(key: key);

  final TextEditingController loginController;
  final ValueNotifier<bool> loginEmptyNotifier;
  final ValueNotifier<String> errorNotifier;
  final GlobalKey<FormFieldState> formFieldKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Введите вашу почту или номер телефона',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 16),
        Text(
          'На ваш адрес электронной почты или номер телефона придет смс-код для входа в приложение',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(height: 25),
        TextFormField(
          key: formFieldKey,
          controller: loginController,
          onChanged: (value) {
            errorNotifier.value = '';
            final validationState = formFieldKey.currentState?.validate();
            debugPrint('validationState: $validationState');
            loginEmptyNotifier.value = !(validationState ?? true);
          },
          validator: _textFieldValidator,
          decoration: const InputDecoration(
            hintText: 'Почта или номер телефона',
            //errorText: 'Поле не может быть пустым',
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
