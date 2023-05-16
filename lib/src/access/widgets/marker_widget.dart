import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';
import '../contracts/door_dto/door_dto.dart';
import '../utils/marker_select_notifier.dart';

/// Компонент маркера на карте
class MarketWidget extends StatelessWidget {
  const MarketWidget({
    super.key,
    required this.door,
  });

  final DoorDto door;

  @override
  Widget build(BuildContext context) {
    final boxColor =
        context.isDarkMode ? kDarkTextPrimaryColor : kLightTextPrimaryColor;
    final titleColor =
        context.isDarkMode ? kLightTextPrimaryColor : kDarkTextPrimaryColor;
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * door.y.toDouble(),
      left: size.width * door.x.toDouble(),
      child: Consumer<MarkerSelectNotifier>(
        builder: (context, notifier, child) {
          final selected = notifier.selectedDoorId == door.id;
          return GestureDetector(
            onTap: () => notifier.select(door),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: selected
                    ? Border.all(
                        color: context.textPrimaryColor,
                        width: 2,
                      )
                    : null,
                color:
                    selected ? context.currentTheme.cardTheme.color : boxColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  door.title,
                  style: context.textTheme.titleMedium!.copyWith(
                    color: selected ? context.textPrimaryColor : titleColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
