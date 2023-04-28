import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timeline/flutter_timeline.dart';

import '../../../../core/constants.dart';
import '../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../theme/theme_colors.dart';
import '../../repositories/request_repository_impl.dart';

class RequestStatusesSheep {
  static Future<void> show(
    BuildContext context, {
    required String requestId,
  }) async {
    final requestRepository = RequestRepositoryImpl();
    final statuses = (await requestRepository.loadRequestStatuses(requestId))
        .reversed
        .toList();
    ThesisBottomSheep.showSheep(
      context,
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "История заявки",
                        textAlign: TextAlign.center,
                        style: AdaptiveTheme.of(context)
                            .theme
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontSize: 24),
                      ),
                      //const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            color: kGray1Color,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TimelineTheme(
                  data: TimelineThemeData(
                    lineColor: kGray1Color,
                    itemGap: 36,
                  ),
                  child: Timeline(
                    indicatorSize: 56,
                    events: List.generate(statuses.length, (index) {
                      final status = statuses[index];
                      return TimelineEventDisplay(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              status.stateName,
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .titleLarge,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "${status.comment} \n${kDateTimeFormatter.format(status.created.toLocal())}",
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .bodySmall,
                            ),
                          ],
                        ),
                        indicatorSize: 32,
                        indicator: DecoratedBox(
                          decoration: BoxDecoration(
                            color: status.stateColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
                    altOffset: const Offset(0, -6),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
