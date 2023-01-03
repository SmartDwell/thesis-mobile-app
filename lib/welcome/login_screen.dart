import 'package:flutter/material.dart';

import '../core/widgets/thesis_button.dart';
import 'introduction/introduction_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
      child: Column(
        children: [
          const IntroductionScreen(),
          const SizedBox(height: 32),
          ThesisButton(
            onPressed: () {},
            child: Text(
              'Войти',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
