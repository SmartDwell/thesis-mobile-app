import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../../../theme/theme_extention.dart';
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

class ThesisNetworkImagePreview extends StatefulWidget {
  const ThesisNetworkImagePreview({
    super.key,
    required this.imageUrl,
    this.accessToken,
    this.options,
  });
  final String imageUrl;
  final ThesisNetworkImagePreviewOptions? options;
  final String? accessToken;

  @override
  State<ThesisNetworkImagePreview> createState() =>
      _ThesisNetworkImagePreviewState();
}

class _ThesisNetworkImagePreviewState extends State<ThesisNetworkImagePreview> {
  Future<String?>? loadAccessToken;

  Future<String?> getAccessToken() async {
    if (widget.accessToken != null) return widget.accessToken;
    final tokensRepository = TokensRepositoryImpl();
    return await tokensRepository.getAccessToken();
  }

  @override
  void initState() {
    loadAccessToken = getAccessToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.imageUrl.isNotEmpty,
      child: FutureBuilder<String?>(
        future: loadAccessToken,
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
            cacheManager: widget.options?.cacheManager ??
                ThesisNetworkImagePreviewCacheManager.instance,
            width: widget.options?.width,
            height: widget.options?.height,
            fit: widget.options?.fit,
            httpHeaders: headers,
            imageUrl: widget.imageUrl,
            placeholder: (_, __) => const Center(
              child: ThesisProgressBar(),
            ),
            errorWidget: (context, url, error) =>
                const _ThesisImagesErrorWidget(),
            imageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: widget.options?.borderRadius,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: widget.options?.fit ?? BoxFit.cover,
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

class _ThesisImagesErrorWidget extends StatelessWidget {
  const _ThesisImagesErrorWidget();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        color: context.currentTheme.cardTheme.color,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: 36,
              color: context.textPrimaryColor,
            ),
            const SizedBox(height: 8),
            Text(
              "Ошибка при загрузке изображения",
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
