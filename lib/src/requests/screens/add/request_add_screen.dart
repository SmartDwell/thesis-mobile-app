import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/helpers/image_helper.dart';
import '../../../../core/helpers/message_helper.dart';
import '../../../../core/widgets/thesis/image/thesis_pick_images_grid.dart';
import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../../../core/widgets/thesis/thesis_split_screen.dart';
import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_extention.dart';
import '../../contracts/add_request_dto/add_request_dto.dart';
import '../../contracts/incident_point_dto/incident_point_dto.dart';
import '../../repositories/request_repository_impl.dart';
import 'select_incident_point_sheep.dart';

/// Страница создания заявки
class RequestAddScreen extends StatelessWidget {
  const RequestAddScreen({
    super.key,
    required this.incidentPoints,
  });

  final List<IncidentPointDto> incidentPoints;

  @override
  Widget build(BuildContext context) {
    final requestRepository = RequestRepositoryImpl();
    final selectedIncidentPointNotifier = ValueNotifier<IncidentPointDto>(
      incidentPoints.first,
    );
    final selectedIncidentPointAsStringNotifier = ValueNotifier<String>(
      incidentPoints.first.name,
    );
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
              child: Column(
                children: [
                  _SelectIncidentPoint(
                    incidentPoints: incidentPoints,
                    selectedIncidentPointNotifier:
                        selectedIncidentPointNotifier,
                    selectedIncidentPointAsStringNotifier:
                        selectedIncidentPointAsStringNotifier,
                  ),
                  const SizedBox(height: 20),
                  _AddFields(
                    titleFormFieldKey: titleFormFieldKey,
                    titleController: titleController,
                    descriptionFormFieldKey: descriptionFormFieldKey,
                    descriptionController: descriptionController,
                    imagesNotifier: imagesNotifier,
                  ),
                ],
              ),
            ),
          ),
          _AddButton(
            titleFormFieldKey: titleFormFieldKey,
            descriptionFormFieldKey: descriptionFormFieldKey,
            imagesNotifier: imagesNotifier,
            titleController: titleController,
            descriptionController: descriptionController,
            selectedIncidentPointNotifier: selectedIncidentPointNotifier,
            selectedIncidentPointAsStringNotifier:
                selectedIncidentPointAsStringNotifier,
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
    required this.selectedIncidentPointNotifier,
    required this.selectedIncidentPointAsStringNotifier,
    required this.requestRepository,
  });

  final GlobalKey<FormFieldState> titleFormFieldKey;
  final GlobalKey<FormFieldState> descriptionFormFieldKey;
  final ValueNotifier<List<File>> imagesNotifier;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final ValueNotifier<IncidentPointDto> selectedIncidentPointNotifier;
  final ValueNotifier<String> selectedIncidentPointAsStringNotifier;
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
              incidentPointId: selectedIncidentPointNotifier.value.id,
              incidentPointFullName:
                  selectedIncidentPointAsStringNotifier.value,
            );

            final hasBeenAdd = await requestRepository
                .addRequest(addRequestDto)
                .whenComplete(() {
              Navigator.pop(context);
            });

            MessageHelper.showByStatus(
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

class _SelectIncidentPoint extends StatelessWidget {
  const _SelectIncidentPoint({
    required this.incidentPoints,
    required this.selectedIncidentPointNotifier,
    required this.selectedIncidentPointAsStringNotifier,
  });

  final List<IncidentPointDto> incidentPoints;
  final ValueNotifier<IncidentPointDto> selectedIncidentPointNotifier;
  final ValueNotifier<String> selectedIncidentPointAsStringNotifier;

  @override
  Widget build(BuildContext context) {
    final complexNotifier = ValueNotifier<IncidentPointDto>(
      incidentPoints.first,
    );
    final squareNotifier = ValueNotifier<IncidentPointDto?>(null);
    final entranceNotifier = ValueNotifier<IncidentPointDto?>(null);
    final apartmentNotifier = ValueNotifier<IncidentPointDto?>(null);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Местоположение',
              style: context.textTheme.headlineMedium?.copyWith(fontSize: 24),
            ),
            IconButton(
              icon: const Icon(
                Icons.backspace_rounded,
                size: 20,
                color: kGray1Color,
              ),
              onPressed: () {
                complexNotifier.value = incidentPoints.first;
                selectedIncidentPointNotifier.value = incidentPoints.first;
                selectedIncidentPointAsStringNotifier.value =
                    incidentPoints.first.name;
                squareNotifier.value = null;
                entranceNotifier.value = null;
                apartmentNotifier.value = null;
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        ValueListenableBuilder(
          valueListenable: complexNotifier,
          builder: (context, point, child) {
            final controller = TextEditingController(
              text: point.name,
            );
            return TextFormField(
              readOnly: true,
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Выберите жилой комплекс',
                labelText: 'Жилой комплекс',
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: kGray1Color,
                ),
              ),
              onTap: () async => await SelectIncidentPointSheep.show(
                context,
                title: 'Выберите жилой комплекс',
                incidentPoints: incidentPoints,
                onSelected: (incidentPoint) {
                  complexNotifier.value = incidentPoint;
                  selectedIncidentPointNotifier.value = incidentPoint;
                  selectedIncidentPointAsStringNotifier.value =
                      incidentPoint.name;
                  squareNotifier.value = null;
                  entranceNotifier.value = null;
                  apartmentNotifier.value = null;
                  Navigator.pop(context);
                },
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        ValueListenableBuilder(
          valueListenable: squareNotifier,
          builder: (context, point, child) {
            final controller = TextEditingController(
              text: point?.name,
            );
            return Column(
              children: [
                TextFormField(
                  readOnly: true,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Выберите площадку (необязательно)',
                    labelText: point == null ? null : 'Площадка',
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: kGray1Color,
                    ),
                  ),
                  onTap: () async => await SelectIncidentPointSheep.show(
                    context,
                    title: 'Выберите площадку',
                    incidentPoints: complexNotifier.value.children,
                    onSelected: (incidentPoint) {
                      squareNotifier.value = incidentPoint;
                      selectedIncidentPointNotifier.value = incidentPoint;
                      selectedIncidentPointAsStringNotifier.value =
                          '${complexNotifier.value.name}, ${incidentPoint.name}'
                              .trim();
                      entranceNotifier.value = null;
                      apartmentNotifier.value = null;
                      Navigator.pop(context);
                    },
                  ),
                ),
                Visibility(
                  visible: squareNotifier.value != null &&
                      squareNotifier.value!.children.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: ValueListenableBuilder(
                      valueListenable: entranceNotifier,
                      builder: (context, point, child) {
                        final entranceController = TextEditingController(
                          text: point?.name,
                        );
                        return Column(
                          children: [
                            TextFormField(
                              readOnly: true,
                              controller: entranceController,
                              decoration: InputDecoration(
                                hintText: 'Выберите подъезд (необязательно)',
                                labelText: point == null ? null : 'Подъезд',
                                suffixIcon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: kGray1Color,
                                ),
                              ),
                              onTap: () async =>
                                  await SelectIncidentPointSheep.show(
                                context,
                                title: 'Выберите подъезд',
                                incidentPoints: squareNotifier.value!.children,
                                onSelected: (incidentPoint) {
                                  entranceNotifier.value = incidentPoint;
                                  selectedIncidentPointNotifier.value =
                                      incidentPoint;
                                  selectedIncidentPointAsStringNotifier.value =
                                      '${complexNotifier.value.name}, ${squareNotifier.value!.name}, ${incidentPoint.name}'
                                          .trim();
                                  apartmentNotifier.value = null;
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Visibility(
                              visible: entranceNotifier.value != null &&
                                  entranceNotifier.value!.children.isNotEmpty,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: ValueListenableBuilder(
                                  valueListenable: apartmentNotifier,
                                  builder: (context, point, child) {
                                    final apartmentController =
                                        TextEditingController(
                                      text: point?.name,
                                    );
                                    return TextFormField(
                                      readOnly: true,
                                      controller: apartmentController,
                                      decoration: InputDecoration(
                                        hintText:
                                            'Выберите квартиру (необязательно)',
                                        labelText:
                                            point == null ? null : 'Квартира',
                                        suffixIcon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: kGray1Color,
                                        ),
                                      ),
                                      onTap: () async =>
                                          await SelectIncidentPointSheep.show(
                                        context,
                                        title: 'Выберите квартиру',
                                        incidentPoints:
                                            entranceNotifier.value!.children,
                                        onSelected: (incidentPoint) {
                                          apartmentNotifier.value =
                                              incidentPoint;
                                          selectedIncidentPointNotifier.value =
                                              incidentPoint;
                                          selectedIncidentPointAsStringNotifier
                                                  .value =
                                              '${complexNotifier.value.name}, ${squareNotifier.value!.name}, ${entranceNotifier.value!.name}, ${incidentPoint.name}'
                                                  .trim();
                                          Navigator.pop(context);
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
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
