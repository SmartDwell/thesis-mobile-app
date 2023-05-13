import 'package:flutter/material.dart';

import '../../../theme/theme_extention.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.onPressed,
  });

  final String title;
  final String subtitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: context.textTheme.titleLarge,
              ),
              Visibility(
                visible: subtitle.isNotEmpty,
                child: Text(
                  subtitle,
                  style: context.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        Switch.adaptive(
          value: context.isDarkMode,
          onChanged: (value) {
            onPressed();
          },
        ),
      ],
    );
  }
}
