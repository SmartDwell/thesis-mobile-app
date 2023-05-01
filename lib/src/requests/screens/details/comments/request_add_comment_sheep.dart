import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/image_helper.dart';
import '../../../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import '../../../../../core/widgets/thesis/image/thesis_image_picker.dart';
import '../../../../../core/widgets/thesis/image/thesis_images_grid.dart';
import '../../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../../core/widgets/thesis/thesis_button.dart';
import '../../../../../theme/theme_colors.dart';
import '../../../contracts/add_comment_dto/add_comment_dto.dart';
import '../../../repositories/request_repository_impl.dart';

class RequestAddCommentSheep {
  static void show(
    BuildContext context, {
    required String requestId,
    required VoidCallback onAddComment,
  }) {
    final formFieldKey = GlobalKey<FormFieldState>();
    final requestRepository = RequestRepositoryImpl();
    final commentImagesNotifier = ValueNotifier<List<File>>([]);
    final commentController = TextEditingController();
    ThesisBottomSheep.showModal(
      context,
      expand: false,
      header: const ThesisBottomSheepHeader(title: "Добавить комментарий"),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              key: formFieldKey,
              controller: commentController,
              onChanged: (value) {
                formFieldKey.currentState?.validate();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Поле не может быть пустым.';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Текст комментария',
              ),
            ),
            const SizedBox(height: 20),
            ThesisButton.fromText(
              onPressed: () async {
                final files = await ThesisImagePicker.get(context);
                commentImagesNotifier.value = List.of(
                  commentImagesNotifier.value + files,
                );
              },
              text: "+ Прикрепить изображения",
              options: ThesisButtonOptions(
                isOutline: true,
                borderRadius: 10,
                height: 44,
                titleStyle: AdaptiveTheme.of(context)
                    .theme
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: kPrimaryLightColor),
              ),
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: commentImagesNotifier,
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
                                  final newList = commentImagesNotifier.value;
                                  newList.remove(file);
                                  commentImagesNotifier.value = List.of(
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
            ThesisButton.fromText(
              onPressed: () async {
                final validationState = formFieldKey.currentState?.validate();
                if (validationState == null || !validationState) {
                  return;
                }

                final images = <String>[];
                for (final image in commentImagesNotifier.value) {
                  final imageId = await ImageHelper.register(image);
                  images.add(imageId);
                }

                final addCommentDto = AddCommentDto(
                  requestId: requestId,
                  text: commentController.text,
                  images: images,
                );

                await requestRepository
                    .addCommentToRequest(addCommentDto)
                    .whenComplete(() {
                  onAddComment();
                  Navigator.of(context).pop();
                });
              },
              text: "Добавить",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
