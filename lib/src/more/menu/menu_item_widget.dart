import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/widgets/thesis/thesis_progress_bar.dart';
import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';

/// Кнопка меню
class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final String icon;
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final clickNotifier = ValueNotifier<bool>(false);
    return GestureDetector(
      onTap: () {
        clickNotifier.value = true;
        Future.delayed(const Duration(milliseconds: 500), () => onPressed())
            .whenComplete(() => clickNotifier.value = false);
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
                        color: context.isDarkMode
                            ? kDarkBackgroundTertiaryColor
                            : kLightBackgroundTertiaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          icon,
                          color: context.textTheme.titleLarge?.color,
                        ),
                      ),
                    ),
                    replacement: const SizedBox(
                      width: 30,
                      height: 30,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ThesisProgressBar(
                          color: kPrimaryLighterColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: context.textTheme.titleLarge,
              ),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            color: kPrimaryLighterColor,
          ),
        ],
      ),
    );
  }
}
