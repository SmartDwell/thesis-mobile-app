import 'package:flutter/material.dart';

import '../../../../core/helpers/message_helper.dart';
import '../../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import '../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../core/widgets/thesis/thesis_button.dart';
import '../../bloc/request_scope.dart';
import '../../contracts/request_cancel_dto/request_cancel_dto.dart';
import '../../contracts/request_dto/request_dto.dart';
import '../../repositories/request_repository_impl.dart';

class ThesisCancelSheep {
  static void show(
    BuildContext context, {
    required RequestDto requestDto,
  }) {
    final requestRepository = RequestRepositoryImpl();
    final reasonFormFieldKey = GlobalKey<FormFieldState>();
    final reasonController = TextEditingController();
    ThesisBottomSheep.showSheep(
      context,
      expand: false,
      header: const ThesisBottomSheepHeader(
        title: 'Отменить заявку',
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              key: reasonFormFieldKey,
              controller: reasonController,
              onChanged: (value) {
                reasonFormFieldKey.currentState?.validate();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Поле не может быть пустым.';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Опишите причину',
              ),
            ),
            const SizedBox(height: 28),
            ThesisButton.fromText(
              onPressed: () async {
                final validationState =
                    reasonFormFieldKey.currentState?.validate() ?? false;
                if (!validationState) {
                  return;
                }

                final requestCancelDto = RequestCancelDto(
                  comment: reasonController.text,
                );

                final hasBeenCancel = await requestRepository
                    .cancelRequest(requestDto.id, requestCancelDto)
                    .whenComplete(() {
                  Navigator.pop(context);
                  RequestScope.load(context);
                });
                MessageHelper.showByStatus(
                  context: context,
                  isSuccess: hasBeenCancel,
                  successMessage: 'Заявка успешно отменена',
                  errorMessage: 'Заявка не была отменеа... попробуйте позже!',
                );
              },
              text: "Отменить",
            )
          ],
        ),
      ),
    );
  }
}
