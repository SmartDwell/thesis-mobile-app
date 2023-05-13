import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/repositories/tokens/tokens_repository_impl.dart';
import '../../../core/widgets/thesis/thesis_progress_bar.dart';
import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';
import '../../welcome/auth/auth_scope.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final clickNotifier = ValueNotifier<bool>(false);
    return GestureDetector(
      onTap: () async {
        clickNotifier.value = true;
        final tokensRepository = TokensRepositoryImpl();
        await tokensRepository.deleteTokens();
        Navigator.pushReplacementNamed(context, '/start');
        AuthScope.start(context);
        clickNotifier.value = false;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ValueListenableBuilder(
                valueListenable: clickNotifier,
                builder: (context, isProcess, child) {
                  return Visibility(
                    visible: !isProcess,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kDarkRedColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          ThesisIcons.logout,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    replacement: const SizedBox(
                      width: 30,
                      height: 30,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ThesisProgressBar(
                          color: kDarkRedColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(width: 16),
              Text(
                'Выйти из аккаунт',
                style: context.textTheme.titleLarge,
              ),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            color: kDarkRedColor,
          ),
        ],
      ),
    );
  }
}
