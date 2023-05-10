import 'package:flutter/material.dart';

import '../../core/widgets/thesis/buttons/thesis_button.dart';
import 'introduction/introduction_screen.dart';
import 'login/login_sheep.dart';

/// Домашняя страница
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        child: Column(
          children: [
            const IntroductionScreen(),
            const SizedBox(height: 32),
            ThesisButton.fromText(
              onPressed: () => LoginSheep.showRequestCodeScreen(context),
              text: 'Войти',
            ),
          ],
        ),
      ),
    );
  }
}
