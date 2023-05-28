import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/helpers/image_helper.dart';
import '../../../../core/helpers/message_helper.dart';
import '../../../../core/widgets/thesis/image/thesis_pick_images_grid.dart';
import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../../../core/widgets/thesis/thesis_split_screen.dart';
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
    return ThesisSplitScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ThesisSliverScreen(
              title: 'Ваша новая заявка',
              child: _AddFields(
                titleFormFieldKey: titleFormFieldKey,
                titleController: titleController,
                descriptionFormFieldKey: descriptionFormFieldKey,
                descriptionController: descriptionController,
                imagesNotifier: imagesNotifier,
              ),
            ),
          ),
          _AddButton(
            titleFormFieldKey: titleFormFieldKey,
            descriptionFormFieldKey: descriptionFormFieldKey,
            imagesNotifier: imagesNotifier,
            titleController: titleController,
            descriptionController: descriptionController,
            requestRepository: requestRepository,
          ),
        ],
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    required this.titleFormFieldKey,
    required this.descriptionFormFieldKey,
    required this.imagesNotifier,
    required this.titleController,
    required this.descriptionController,
    required this.requestRepository,
  });

  final GlobalKey<FormFieldState> titleFormFieldKey;
  final GlobalKey<FormFieldState> descriptionFormFieldKey;
  final ValueNotifier<List<File>> imagesNotifier;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final RequestRepositoryImpl requestRepository;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.currentTheme.scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: 32,
        ),
        child: ThesisButton.fromText(
          onPressed: () async {
            final titleValidationState =
                titleFormFieldKey.currentState?.validate() ?? false;
            final descriptionValidationState =
                descriptionFormFieldKey.currentState?.validate() ?? false;
            if (!titleValidationState || !descriptionValidationState) {
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
              incidentPointList: ['3fa85f64-5717-4562-b3fc-2c963f66afa6'],
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
              errorMessage: 'Заявка не была добавлена... попробуйте позже!',
            );
          },
          text: "Добавить",
        ),
      ),
    );
  }
}

class _AddFields extends StatelessWidget {
  const _AddFields({
    required this.titleFormFieldKey,
    required this.titleController,
    required this.descriptionFormFieldKey,
    required this.descriptionController,
    required this.imagesNotifier,
  });

  final GlobalKey<FormFieldState> titleFormFieldKey;
  final TextEditingController titleController;
  final GlobalKey<FormFieldState> descriptionFormFieldKey;
  final TextEditingController descriptionController;
  final ValueNotifier<List<File>> imagesNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Сведения о заявке',
          style: context.textTheme.headlineMedium?.copyWith(fontSize: 24),
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
    );
  }
}
