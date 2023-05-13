import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/assets_constants.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_extention.dart';
import '../access/access_page.dart';
import '../home/home_page.dart';
import '../more/more_page.dart';
import '../requests/request_page.dart';

/// Компонент нижней навигации
class ThesisNavigationBar extends StatelessWidget {
  const ThesisNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [
      HomePage(),
      AccessPage(),
      RequestPage(),
      MorePage(),
    ];
    final selectedPageNotifier = ValueNotifier<int>(2);
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return Scaffold(
          appBar: null,
          body: pages[selectedPage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedPage,
            onTap: (index) => selectedPageNotifier.value = index,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    ThesisIcons.home,
                    color: selectedPage == 0
                        ? kPrimaryLightColor
                        : context.textTheme.titleLarge?.color,
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Новое',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    ThesisIcons.access,
                    color: selectedPage == 1
                        ? kPrimaryLightColor
                        : context.textTheme.titleLarge?.color,
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Доступ',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    ThesisIcons.requests,
                    color: selectedPage == 2
                        ? kPrimaryLightColor
                        : context.textTheme.titleLarge?.color,
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Заявки',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    ThesisIcons.more,
                    color: selectedPage == 3
                        ? kPrimaryLightColor
                        : context.textTheme.titleLarge?.color,
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Ещё',
              ),
            ],
          ),
        );
      },
    );
  }
}
