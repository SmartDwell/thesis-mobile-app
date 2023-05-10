import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/helpers/image_helper.dart';
import '../../../../core/helpers/message_helper.dart';
import '../../../../core/widgets/thesis/image/thesis_pick_images_grid.dart';
import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../../../theme/theme_extention.dart';
import '../../contracts/add_request_dto/add_request_dto.dart';
import '../../repositories/request_repository_impl.dart';

/// Страница создания заявки
class RequestAddScreen extends StatelessWidget {
  const RequestAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final requestRepository = RequestRepositoryImpl();
    final titleFormFieldKey = GlobalKey<FormFieldState>();
    final titleController = TextEditingController();
    final descriptionFormFieldKey = GlobalKey<FormFieldState>();
    final descriptionController = TextEditingController();
    final imagesNotifier = ValueNotifier<List<File>>([]);
    return ThesisSliverScreen(
      title: 'Ваша новая заявка',
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Сведения о заявке',
                  style:
                      context.textTheme.headlineMedium?.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  key: titleFormFieldKey,
                  controller: titleController,
                  onChanged: (value) {
                    titleFormFieldKey.currentState?.validate();
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле не может быть пустым.';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Тема проблемы',
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  key: descriptionFormFieldKey,
                  controller: descriptionController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  onChanged: (value) {
                    descriptionFormFieldKey.currentState?.validate();
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле не может быть пустым.';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Описание проблемы',
                  ),
                ),
                const SizedBox(height: 20),
                ThesisPickImagesGrid(
                  fileNotifier: imagesNotifier,
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ColoredBox(
                color: context.currentTheme.scaffoldBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 42),
                  child: ThesisButton.fromText(
                    onPressed: () async {
                      final titleValidationState =
                          titleFormFieldKey.currentState?.validate() ?? false;
                      final descriptionValidationState =
                          descriptionFormFieldKey.currentState?.validate() ??
                              false;
                      if (!titleValidationState ||
                          !descriptionValidationState) {
                        return;
                      }

                      final images = <String>[];
                      for (final image in imagesNotifier.value) {
                        final imageId = await ImageHelper.register(image);
                        images.add(imageId);
                      }

                      final addRequestDto = AddRequestDto(
                        title: titleController.text,
                        description: descriptionController.text,
                        images: images,
                        incidentPointList: [
                          '3fa85f64-5717-4562-b3fc-2c963f66afa6'
                        ],
                        incidentPointListAsString: 'Тестовое местоположение',
                      );

                      final hasBeenAdd = await requestRepository
                          .addRequest(addRequestDto)
                          .whenComplete(() {
                        Navigator.pop(context);
                      });

                      MessageHelper.showByStatus(
                        context: context,
                        isSuccess: hasBeenAdd,
                        successMessage: 'Заявка успешно добавлена',
                        errorMessage:
                            'Заявка не была добавлена... попробуйте позже!',
                      );
                    },
                    text: "Добавить",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
