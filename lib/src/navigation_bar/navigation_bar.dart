import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme_colors.dart';
import '../access/access_page.dart';
import '../home/home_page.dart';
import '../more/more_page.dart';
import '../requests/requests_page.dart';
import '../services/services_page.dart';

class ThesisNavigationBar extends StatelessWidget {
  const ThesisNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [
      HomePage(),
      AccessPage(),
      ServicesPage(),
      RequestsPage(),
      MorePage(),
    ];
    final selectedPageNotifier = ValueNotifier<int>(4);
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return Scaffold(
          body: pages[selectedPage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedPage,
            onTap: (index) => selectedPageNotifier.value = index,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    'lib/assets/images/icons/home.svg',
                    color: selectedPage == 0 ? kPrimaryLightColor : kGray1Color,
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
                    'lib/assets/images/icons/access.svg',
                    color: selectedPage == 1 ? kPrimaryLightColor : kGray1Color,
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
                    'lib/assets/images/icons/services.svg',
                    color: selectedPage == 2 ? kPrimaryLightColor : kGray1Color,
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Услуги',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    'lib/assets/images/icons/requests.svg',
                    color: selectedPage == 3 ? kPrimaryLightColor : kGray1Color,
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
                    'lib/assets/images/icons/more.svg',
                    color: selectedPage == 4 ? kPrimaryLightColor : kGray1Color,
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
