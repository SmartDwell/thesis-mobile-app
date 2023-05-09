import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/helpers/dio_helper.dart';
import '../../../../../core/widgets/thesis/thesis_network_image_preview.dart';
import '../../../contracts/request_comment_dto/request_comment_dto.dart';

/// Компонент комментария
class RequestCommentItemWidget extends StatelessWidget {
  const RequestCommentItemWidget({
    super.key,
    required this.commentDto,
  });

  final RequestCommentDto commentDto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${commentDto.creatorName}, ${kDateTimeFormatter.format(commentDto.created.toLocal())}",
          style: AdaptiveTheme.of(context).theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 4),
        Text(
          commentDto.text,
          style: AdaptiveTheme.of(context).theme.textTheme.bodyLarge,
        ),
        Visibility(
          visible: commentDto.images.isNotEmpty,
          child: SizedBox(
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(commentDto.images.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ThesisNetworkImagePreview(
                      imageUrl:
                          "${DioHelper.baseUrl}/images/${commentDto.images[index]}",
                      options: const ThesisNetworkImagePreviewOptions(
                        width: 64,
                        height: 64,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
