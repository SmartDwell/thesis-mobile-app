import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';
import '../../repositories/tokens/tokens_repository_impl.dart';
import 'thesis_progress_bar.dart';

/// Карусель изображений
class ThesisImagesCarousel extends StatelessWidget {
  const ThesisImagesCarousel({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final tokensRepository = TokensRepositoryImpl();
    return FutureBuilder<String?>(
      future: tokensRepository.getAccessToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: ThesisProgressBar(),
          );
        }

        if (snapshot.hasError || !snapshot.hasData || snapshot.data == null) {
          return const SizedBox.shrink();
        }

        final token = snapshot.data!;
        final headers = {
          "Accept": "*/*",
          "Authorization": "Bearer $token",
        };

        final carouselIndexNotifier = ValueNotifier(0);
        return Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CarouselSlider(
              items: images.map((image) {
                return CachedNetworkImage(
                  imageUrl: image,
                  httpHeaders: headers,
                  placeholder: (context, url) => const Center(
                    child: ThesisProgressBar(),
                  ),
                  errorWidget: (context, url, error) {
                    return const _ThesisImagesErrorWidget();
                  },
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.25,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  carouselIndexNotifier.value = index;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: kDarkBackgroundSecondaryColor.withOpacity(0.64),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4,
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: carouselIndexNotifier,
                    builder: (context, currentIndex, child) {
                      return Text("${currentIndex + 1} из ${images.length}");
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ThesisImagesErrorWidget extends StatelessWidget {
  const _ThesisImagesErrorWidget();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        color: AdaptiveTheme.of(context).theme.cardTheme.color,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: 36,
              color:
                  AdaptiveTheme.of(context).theme.textTheme.titleMedium!.color,
            ),
            const SizedBox(height: 8),
            Text(
              "Ошибка при загрузке изображения",
              style: AdaptiveTheme.of(context).theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
