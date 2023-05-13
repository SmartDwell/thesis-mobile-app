import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../../theme/theme_extention.dart';
import '../menu/menu_item_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThesisSliverScreen(
      title: 'Настройки',
      child: Column(
        children: [
          MenuItemWidget(
            icon: ThesisIcons.home,
            title: 'Сменить тему',
            onPressed: () {
              if (context.isDarkMode) {
                AdaptiveTheme.of(context).setLight();
              } else {
                AdaptiveTheme.of(context).setDark();
              }
            },
          ),
        ],
      ),
    );
  }
}
