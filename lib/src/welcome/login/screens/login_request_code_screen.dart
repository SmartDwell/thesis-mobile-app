import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validators/validators.dart';

import '../../../../core/widgets/thesis/thesis_base_page.dart';
import '../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../core/widgets/thesis/thesis_button.dart';
import '../bloc/login_bloc.dart';
import '../login_scope.dart';
import 'login_verify_code_screen.dart';

class LoginRequestCodeScreen extends StatelessWidget {
  const LoginRequestCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginEmptyNotifier = ValueNotifier<bool>(false);
    final loginIsSendingNotifier = ValueNotifier<bool>(false);
    final loginController = TextEditingController(text: 'seljmov@list.ru');
    final formFieldKey = GlobalKey<FormFieldState>();
    final errorNotifier = ValueNotifier<String>('');
    //final bloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<LoginBloc, LoginState>(
      //bloc: bloc,
      // loginIsSendingNotifier.value = false;
      listener: (context, state) => state.mapOrNull(
        successRequestCode: (state) => ThesisBottomSheep.show(
          context,
          child: AuthCodeScreen(
            ticketId: state.tickedId,
            username: state.username,
          ),
        ),
        failureRequestCode: (state) => errorNotifier.value = state.message,
      ),
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
    required this.loginController,
    required this.formFieldKey,
  }) : super(key: key);

  final ValueNotifier<bool> loginEmptyNotifier;
  final ValueNotifier<bool> loginIsSendingNotifier;
  final TextEditingController loginController;
  final GlobalKey<FormFieldState> formFieldKey;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginEmptyNotifier,
      builder: (context, loginIsEmpty, child) {
        return ThesisButton.fromText(
          isDisabled: loginIsEmpty,
          onPressed: () async {
            if (formFieldKey.currentState?.validate() ?? false) {
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
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        Text(
          'На ваш адрес электронной почты или номер телефона придет смс-код для входа в приложение',
          style: Theme.of(context).textTheme.titleSmall,
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
