import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';
import 'menu/logout_widget.dart';
import 'menu/menu_item_widget.dart';
import 'widgets/user_widget.dart';

/// Страница Еще
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0).copyWith(top: 65),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const UserWidget(),
              const SizedBox(height: 30),
              Column(
                children: [
                  // MenuItemWidget(
                  //   icon: ThesisIcons.home,
                  //   title: 'Моя собственность',
                  //   onPressed: () => MessageHelper.showInfo(
                  //     context: context,
                  //     message: 'Раздел находится в разработке...',
                  //   ),
                  // ),
                  // const SizedBox(height: 16),
                  MenuItemWidget(
                    icon: ThesisIcons.requests,
                    title: 'Мои заявки',
                    onPressed: () => Navigator.pushNamed(context, '/requests'),
                  ),
                  const SizedBox(height: 16),
                  MenuItemWidget(
                    icon: ThesisIcons.payments,
                    title: 'Платежи',
                    onPressed: () => Navigator.pushNamed(context, '/payments'),
                  ),
                  const SizedBox(height: 16),
                  MenuItemWidget(
                    icon: ThesisIcons.news,
                    title: 'Новости и события',
                    onPressed: () => Navigator.pushNamed(context, '/home'),
                  ),
                  // const SizedBox(height: 16),
                  // MenuItemWidget(
                  //   icon: ThesisIcons.access,
                  //   title: 'Управление доступом',
                  //   onPressed: () => Navigator.pushNamed(context, '/access'),
                  // ),
                ],
              ),
              const SizedBox(height: 45),
              Column(
                children: [
                  MenuItemWidget(
                    icon: ThesisIcons.settings,
                    title: 'Настройки',
                    onPressed: () => Navigator.pushNamed(context, '/settings'),
                  ),
                  const SizedBox(height: 16),
                  const LogOutWidget(),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
