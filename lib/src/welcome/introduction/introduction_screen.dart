import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_extention.dart';
import 'types/introduction_item.dart';
import 'widgets/bounds_widget.dart';

/// Экран вводной страницы
class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    const tempItems = [
      IntroductionItem(
        title: 'Улучшаем вашу жизнь, решая проблемы',
        description:
            'Мы предоставляем возможность создавать заявки о проблемах, чтобы создать комфортную среду для жизни',
      ),
      IntroductionItem(
        title: 'Всегда в курсе последних новостей',
        description:
            'Получайте свежие новости о нашей компании и актуальную информацию, чтобы быть в курсе всех событий и изменений',
      ),
      IntroductionItem(
        title: 'Удобные и безопасные платежи',
        description:
            'Оплачивайте свои счета быстро и безопасно прямо через наше приложение, экономя время и избегая неудобства',
      ),
      IntroductionItem(
        title: 'Контроль доступа на территорию',
        description:
            'Наше приложение позволяет вам контролировать доступ на территорию, обеспечивая безопасность и удобство для всех пользователей',
      ),
    ];

    final currentPositionNotifier = ValueNotifier<int>(0);
    return Expanded(
      child: Column(
        children: [
          Flexible(
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                currentPositionNotifier.value = value;
              },
              itemCount: tempItems.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.075,
                    ),
                    BoundsWidget(
                      isEvenBounds: (index + 1).isEven,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Text(
                      tempItems[index].title,
                      textAlign: TextAlign.center,
                      style: context.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      tempItems[index].description,
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleSmall,
                    ),
                  ],
                );
              },
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: currentPositionNotifier,
            builder: (context, value, child) {
              return Material(
                color: Colors.transparent,
                child: DotsIndicator(
                  dotsCount: tempItems.length,
                  position: value.toDouble(),
                  onTap: (position) {
                    pageController.animateToPage(
                      position.toInt(),
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
