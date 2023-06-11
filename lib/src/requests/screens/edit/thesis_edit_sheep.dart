import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/fab_notifier_helper.dart';
import '../../../../core/helpers/message_helper.dart';
import '../../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import '../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../bloc/request_scope.dart';
import '../../contracts/request_dto/request_dto.dart';
import '../../contracts/request_edit_dto/request_edit_dto.dart';
import '../../repositories/request_repository_impl.dart';

/// BottomSheep для редактирования заявки
class ThesisEditSheep {
  static void show(
    BuildContext context, {
    required RequestDto requestDto,
  }) {
    final fabHelper = context.read<FabNotifierHelper>();
    fabHelper.hide();
    final requestRepository = RequestRepositoryImpl();
    final titleFormFieldKey = GlobalKey<FormFieldState>();
    final titleController = TextEditingController(text: requestDto.title);
    final descriptionFormFieldKey = GlobalKey<FormFieldState>();
    final descriptionController = TextEditingController(
      text: requestDto.description,
    );
    ThesisBottomSheep.showSheep(
      context,
      expand: false,
      header: ThesisBottomSheepHeader(
        title: 'Редактировать заявку',
        onPop: () => fabHelper.show(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
            const SizedBox(height: 16),
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
            const SizedBox(height: 28),
            ThesisButton.fromText(
              onPressed: () async {
                final titleValidationState =
                    titleFormFieldKey.currentState?.validate() ?? false;
                final descriptionValidationState =
                    descriptionFormFieldKey.currentState?.validate() ?? false;
                if (!titleValidationState || !descriptionValidationState) {
                  return;
                }

                final requestEditDto = RequestEditDto(
                  title: titleController.text,
                  description: descriptionController.text,
                );

                final hasBeenEdit = await requestRepository
                    .editRequest(requestDto.id, requestEditDto)
                    .whenComplete(() {
                  Navigator.pop(context);
                  fabHelper.show();
                  RequestScope.load(context);
                });
                MessageHelper.showByStatus(
                  isSuccess: hasBeenEdit,
                  successMessage: 'Заявка успешно изменена',
                  errorMessage: 'Заявка не была изменена... попробуйте позже!',
                );
              },
              text: "Изменить",
            )
          ],
        ),
      ),
    );
  }
}
