import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../contracts/door_dto/door_dto.dart';
import '../utils/marker_select_notifier.dart';
import '../widgets/door_open_widget.dart';
import '../widgets/map_widget.dart';
import '../widgets/marker_widget.dart';

/// Страница карты
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
