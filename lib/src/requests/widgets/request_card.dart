import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/constants/constants.dart';
import '../../../core/widgets/thesis/buttons/thesis_text_button.dart';
import '../../../theme/theme_extention.dart';
import '../contracts/request_dto/request_dto.dart';
import '../screens/cancel/request_cancel_sheep.dart';
import '../screens/edit/thesis_edit_sheep.dart';
import 'request_state_card.dart';
import 'request_states.dart';

/// Карточка заявки
class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
    required this.request,
  });

  final RequestDto request;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '№${request.number}',
                      style: context.textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 8),
                    RequestStateCard(
                      stateName: request.stateName,
                      stateColor: request.stateColor,
                    ),
                  ],
                ),
                Text(
                  kDateFormatter.format(request.created.toLocal()),
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    request.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.headlineSmall,
                  ),
                ),
                Visibility(
                  visible: request.isEdited,
                  child: Text(
                    ' (ред.)',
                    style: context.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ThesisIcons.geoMark,
                ),
                const SizedBox(width: 6),
                Text(
                  request.incidentPointFullName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              request.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium,
            ),
            Visibility(
              visible: request.currentState == RequestStates.New,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    ThesisTextButton(
                      title: 'Редактировать'.toUpperCase(),
                      onTap: () => ThesisEditSheep.show(
                        context,
                        requestDto: request,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ThesisTextButton(
                      title: 'Отменить'.toUpperCase(),
                      onTap: () => ThesisCancelSheep.show(
                        context,
                        requestDto: request,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
