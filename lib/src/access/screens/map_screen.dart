import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/thesis/thesis_progress_bar.dart';
import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';
import '../bloc/access_scope.dart';
import '../contracts/door_dto/door_dto.dart';
import '../utils/marker_select_notifier.dart';
import '../widgets/map_widget.dart';
import '../widgets/marker_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({
    super.key,
    required this.doors,
  });

  final List<DoorDto> doors;

  @override
  Widget build(BuildContext context) {
    return Consumer<MarkerSelectNotifier>(
      builder: (context, notifier, child) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GestureDetector(
              onTap: () => notifier.unselect(),
              child: const MapWidget(),
            ),
            ...List.generate(
              doors.length,
              (index) => MarketWidget(
                door: doors[index],
              ),
            ),
            if (notifier.selectedDoor != null)
              Positioned(
                bottom: 16,
                child: DoorOpenWidget(
                  door: notifier.selectedDoor!,
                  onOpen: () => notifier.unselect(),
                ),
              ),
          ],
        );
      },
    );
  }
}

class DoorOpenWidget extends StatelessWidget {
  const DoorOpenWidget({
    super.key,
    required this.door,
    required this.onOpen,
  });

  final DoorDto door;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    final boxColor =
        context.isDarkMode ? kDarkTextPrimaryColor : kLightTextPrimaryColor;
    final titleColor =
        context.isDarkMode ? kLightTextPrimaryColor : kDarkTextPrimaryColor;
    final openedNotifier = ValueNotifier<bool>(false);
    return ValueListenableBuilder(
      valueListenable: openedNotifier,
      builder: (context, isOpening, child) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Visibility(
            visible: isOpening,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 12,
              ),
              child: Center(
                child: ThesisProgressBar(
                  color: titleColor,
                ),
              ),
            ),
            replacement: GestureDetector(
              onTap: () async {
                openedNotifier.value = true;
                await Future.delayed(
                  const Duration(seconds: 1),
                  () => AccessScope.open(context, door.id),
                ).whenComplete(() => openedNotifier.value = false);
                onOpen();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 18,
                ),
                child: Column(
                  children: [
                    Text(
                      door.name,
                      style: context.textTheme.headlineSmall!.copyWith(
                        fontSize: 18,
                        color: titleColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Нажмите, чтобы открыть',
                      style: context.textTheme.bodySmall!.copyWith(
                        color: titleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
