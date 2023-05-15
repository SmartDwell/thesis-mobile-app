import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_extention.dart';
import '../../repositories/tokens/tokens_repository_impl.dart';
import 'thesis_network_image_preview.dart';
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
        final carouselIndexNotifier = ValueNotifier(0);
        return Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CarouselSlider(
              items: images.map((image) {
                return ThesisNetworkImagePreview(
                  imageUrl: image,
                  accessToken: token,
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
                  color: context.currentTheme.scaffoldBackgroundColor
                      .withOpacity(0.64),
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
                      return Text(
                        "${currentIndex + 1} из ${images.length}",
                        style: context.textTheme.titleSmall,
                      );
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
