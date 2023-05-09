import 'package:flutter/material.dart';

/// Сетка изображений
class ThesisImagesGrid<TItem> extends StatelessWidget {
  const ThesisImagesGrid({
    super.key,
    required this.images,
    required this.imageBuilder,
  });

  final List<TItem> images;
  final Widget Function(TItem url) imageBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: List.generate(images.length, (index) {
        return imageBuilder(images[index]);
      }),
    );
  }
}
