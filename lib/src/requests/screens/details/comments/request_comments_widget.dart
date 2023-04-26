import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/theme_colors.dart';
import '../../../contracts/request_comment_dto/request_comment_dto.dart';
import '../../../repositories/request_repository_impl.dart';
import 'request_comment_item_widget.dart';
import 'request_comments_shimmer.dart';

class RequestCommentsWidget extends StatelessWidget {
  const RequestCommentsWidget({
    super.key,
    required this.requestId,
  });

  final String requestId;

  @override
  Widget build(BuildContext context) {
    final requestRepository = RequestRepositoryImpl();
    var stream = requestRepository.loadRequestComments(requestId).asStream();
    final isShowCommentsNotifier = ValueNotifier<bool>(true);
    return ValueListenableBuilder(
      valueListenable: isShowCommentsNotifier,
      builder: (context, isShow, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Комментарии",
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    isShowCommentsNotifier.value = !isShow;
                    if (isShowCommentsNotifier.value) {
                      stream = requestRepository
                          .loadRequestComments(requestId)
                          .asStream();
                    }
                  },
                  icon: Icon(
                    isShow
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: kPrimaryLightColor,
                  ),
                ),
              ],
            ),
            Visibility(
              visible: !isShow,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "Вы скрыли комментарии",
                  textAlign: TextAlign.center,
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyMedium,
                ),
              ),
              replacement: StreamBuilder(
                stream: stream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const RequestCommentsShimmer();
                  }

                  final comments = snapshot.data == null
                      ? <RequestCommentDto>[]
                      : snapshot.data!.reversed.toList();
                  return Visibility(
                    visible: comments.isEmpty,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "Пока нет комментариев",
                        textAlign: TextAlign.center,
                        style: AdaptiveTheme.of(context)
                            .theme
                            .textTheme
                            .bodyMedium,
                      ),
                    ),
                    replacement: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(comments.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: index == 0 ? 0 : 16,
                          ),
                          child: RequestCommentItemWidget(
                            commentDto: comments[index],
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
