import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../../core/helpers/image_helper.dart';
import '../../../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import '../../../../../core/widgets/thesis/image/thesis_pick_images_grid.dart';
import '../../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../../core/widgets/thesis/buttons/thesis_button.dart';
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
    ThesisBottomSheep.showSheep(
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
            ThesisPickImagesGrid(
              fileNotifier: commentImagesNotifier,
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
                  text: commentController.text,
                  images: images,
                );

                await requestRepository
                    .addCommentToRequest(requestId, addCommentDto)
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
