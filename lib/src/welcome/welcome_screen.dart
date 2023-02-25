import 'package:flutter/material.dart';

import '../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../core/widgets/thesis/thesis_button.dart';
import 'introduction/introduction_screen.dart';
import 'login/screens/login_request_code_screen.dart';

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
              onPressed: () => ThesisBottomSheep.show(
                context,
                child: const LoginRequestCodeScreen(),
              ),
              text: 'Войти',
            ),
          ],
        ),
      ),
    );
  }
}
