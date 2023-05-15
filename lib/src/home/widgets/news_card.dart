import 'package:flutter/material.dart';

import '../../../core/helpers/dio_helper.dart';
import '../../../core/widgets/thesis/buttons/thesis_text_button.dart';
import '../../../core/widgets/thesis/thesis_network_image_preview.dart';
import '../../../theme/theme_extention.dart';
import '../contracts/news_dto/news_dto.dart';

/// Карточка новости
class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
    required this.onMore,
  });

  final NewsDto news;
  final void Function() onMore;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  news.title,
                  style: context.textTheme.headlineSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  news.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          ThesisNetworkImagePreview(
            imageUrl: "${DioHelper.baseUrl}/images/${news.images[0]}",
            options: ThesisNetworkImagePreviewOptions(
              //width: MediaQuery.of(context).size.width,
              //height: 180,
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ThesisTextButton(
              title: 'Подробнее'.toUpperCase(),
              onTap: onMore,
            ),
          ),
        ],
      ),
    );
  }
}
