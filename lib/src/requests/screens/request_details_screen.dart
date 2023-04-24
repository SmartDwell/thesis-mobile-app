import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/thesis/thesis_images_carousel.dart';
import '../../../theme/theme_constants.dart';
import '../contracts/request_dto/request_dto.dart';

class RequestDetailsScreen extends StatelessWidget {
  const RequestDetailsScreen({
    super.key,
    required this.requestDto,
  });

  final RequestDto requestDto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Заявка №${requestDto.number}",
          style: AdaptiveTheme.of(context)
              .theme
              .textTheme
              .titleMedium
              ?.copyWith(fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      // TODO: Поправить ссылку
      body: SingleChildScrollView(
        child: Column(
          children: [
            ThesisImagesCarousel(
              images: requestDto.images
                  .map((image) => "http://194.99.22.243:1480/api/images/$image")
                  .toList(),
            ),
            Padding(
              padding: kThemeDefaultPaddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    requestDto.title,
                    style: AdaptiveTheme.of(context)
                        .theme
                        .textTheme
                        .headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/icons/geomark.svg",
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          requestDto.incidentPointListAsString,
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .titleSmall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    requestDto.description,
                    style:
                        AdaptiveTheme.of(context).theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
