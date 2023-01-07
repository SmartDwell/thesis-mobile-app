import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/thesis_button.dart';
import '../bloc/auth_index.dart';

class AuthCodeWidget extends StatelessWidget {
  const AuthCodeWidget({
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
                ],
              ),
              const Spacer(),
              ValueListenableBuilder<bool>(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
