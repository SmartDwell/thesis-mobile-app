import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

import '../../core/repositories/tokens/tokens_repository_impl.dart';
import '../../core/widgets/thesis/buttons/thesis_button.dart';

/// Страница Еще
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text('MorePage'),
              ),
              const SizedBox(height: 16),
              ThesisButton.fromText(
                onPressed: () async {
                  final tokensRepository = TokensRepositoryImpl();
                  await tokensRepository.deleteTokens();
                  Navigator.pushReplacementNamed(context, '/start');
                },
                text: 'Выйти из аккаунта',
              ),
            ],
          ),
        );
      }),
    );
  }
}
