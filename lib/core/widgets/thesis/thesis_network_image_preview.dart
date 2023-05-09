import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../../../theme/theme_colors.dart';
import '../../repositories/tokens/tokens_repository_impl.dart';
import 'thesis_progress_bar.dart';

/// Кеш-менеджер для изображений
class ThesisNetworkImagePreviewCacheManager {
  static const key = 'thesisNetworkImagePreviewCacheKey';
  static CacheManager instance = CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 20,
      repo: JsonCacheInfoRepository(databaseName: key),
    ),
  );
}

/// Опции для компонент вывода изображения из интернета
class ThesisNetworkImagePreviewOptions {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final CacheManager? cacheManager;

  const ThesisNetworkImagePreviewOptions({
    this.cacheManager,
    this.borderRadius,
    this.width,
    this.height,
    this.fit,
  });
}

class ThesisNetworkImagePreview extends StatelessWidget {
  const ThesisNetworkImagePreview({
    super.key,
    required this.imageUrl,
    this.options,
  });
  final String imageUrl;
  final ThesisNetworkImagePreviewOptions? options;

  @override
  Widget build(BuildContext context) {
    final tokensRepository = TokensRepositoryImpl();
    return Visibility(
      visible: imageUrl.isNotEmpty,
      child: FutureBuilder<String?>(
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

          return CachedNetworkImage(
            cacheManager: options?.cacheManager ??
                ThesisNetworkImagePreviewCacheManager.instance,
            width: options?.width,
            height: options?.height,
            fit: options?.fit,
            httpHeaders: headers,
            imageUrl: imageUrl,
            placeholder: (_, __) => const Center(
              child: ThesisProgressBar(),
            ),
            errorWidget: (context, url, error) {
              final size = MediaQuery.of(context).size;
              return Container(
                height: size.height,
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.error, size: 36, color: kRedColor),
                ),
              );
            },
            imageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: options?.borderRadius ??
                      const BorderRadius.all(
                        Radius.circular(12),
                      ),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: options?.fit ?? BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
