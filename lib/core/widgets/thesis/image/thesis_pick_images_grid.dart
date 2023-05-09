import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_extention.dart';
import '../buttons/thesis_button_options.dart';
import '../buttons/thesis_outlined_button.dart';
import 'thesis_image_picker.dart';
import 'thesis_images_grid.dart';

/// Сетка изображений с выбором из галереи
class ThesisPickImagesGrid extends StatelessWidget {
  const ThesisPickImagesGrid({
    super.key,
    required this.fileNotifier,
  });

  final ValueNotifier<List<File>> fileNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThesisOutlinedButton(
          onPressed: () async {
            final files = await ThesisImagePicker.get(context);
            fileNotifier.value = List.of(
              fileNotifier.value + files,
            );
          },
          text: "+ Прикрепить изображения",
          options: ThesisButtonOptions(
            isOutline: true,
            borderRadius: 10,
            height: 44,
            titleStyle: context.textTheme.bodyMedium
                ?.copyWith(color: kPrimaryLightColor),
          ),
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: fileNotifier,
          builder: (context, images, child) {
            return Visibility(
              visible: images.isNotEmpty,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 36),
                child: ThesisImagesGrid(
                  images: images,
                  imageBuilder: (file) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: FileImage(file),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: GestureDetector(
                            onTap: () {
                              final newList = fileNotifier.value;
                              newList.remove(file);
                              fileNotifier.value = List.of(
                                newList,
                              );
                            },
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                color: Colors.redAccent.withOpacity(0.8),
                              ),
                              child: const Icon(
                                Icons.delete,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
