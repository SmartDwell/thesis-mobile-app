import 'package:flutter/material.dart';

import '../../core/widgets/thesis_bottom_sheep.dart';
import '../../core/widgets/thesis_button.dart';
import 'auth/screens/auth_login_screen.dart';
import 'introduction/introduction_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
      child: Column(
        children: [
          const IntroductionScreen(),
          const SizedBox(height: 32),
          ThesisButton.fromText(
            onPressed: () => ThesisBottomSheep.show(
              context,
              child: const AuthLoginScreen(),
            ),
            text: 'Войти',
          ),
        ],
      ),
    );
  }
}
