import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/thesis_button.dart';
import '../bloc/auth_index.dart';

class AuthLoginWidget extends StatelessWidget {
  const AuthLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('AuthLoginWidget build');
    final loginEmptyNotifier = ValueNotifier<bool>(false);
    final loginIsSendingNotifier = ValueNotifier<bool>(false);
    final loginController = TextEditingController(text: 'seljmov@list.ru');
    final bloc = BlocProvider.of<AuthBloc>(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Введите вашу почту или номер телефона',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'На ваш адрес электронной почты или номер телефона придет смс-код для входа в приложение',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    controller: loginController,
                    onChanged: (value) {
                      loginEmptyNotifier.value = value.isEmpty;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Почта или номер телефона',
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ValueListenableBuilder<bool>(
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
                          if (!loginIsEmpty && !loginIsSending) {
                            bloc.add(
                              AuthRequestCodeEvent(
                                loginController.text,
                              ),
                            );
                          }
                          loginIsSendingNotifier.value = false;
                        },
                        text: 'Продолжить',
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
