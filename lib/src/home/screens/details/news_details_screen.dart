import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/dio_helper.dart';
import '../../../../core/widgets/thesis/thesis_images_carousel.dart';
import '../../../../theme/theme_constants.dart';
import '../../../../theme/theme_extention.dart';
import '../../contracts/news_dto/news_dto.dart';

/// Страница подробной информации новости
class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({
    super.key,
    required this.newsDto,
  });

  final NewsDto newsDto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Visibility(
              visible: newsDto.images.isNotEmpty,
              child: ThesisImagesCarousel(
                images: newsDto.images
                    .map((imageId) => "${DioHelper.baseUrl}/images/$imageId")
                    .toList(),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: kThemeDefaultPaddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    newsDto.title,
                    style: context.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Дата публикации: ${kDateFormatter.format(newsDto.created.toLocal())}",
                    style: context.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    newsDto.description,
                    textAlign: TextAlign.justify,
                    style: context.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
