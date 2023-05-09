import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timeline/flutter_timeline.dart';

import '../../../../core/constants.dart';
import '../../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
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
      expand: false,
      header: const ThesisBottomSheepHeader(
        title: 'История заявки',
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TimelineTheme(
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
            ),
          ),
        ],
      ),
    );
  }
}
