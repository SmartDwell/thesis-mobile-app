import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

import '../../../../../core/widgets/thesis/thesis_button.dart';
import '../../../../../theme/theme_colors.dart';
import '../../../contracts/add_comment_dto/add_comment_dto.dart';
import '../../../repositories/request_repository_impl.dart';

class RequestAddCommentWidget {
  static void show({
    required BuildContext context,
    required String requestId,
    required VoidCallback onAddComment,
  }) {
    final formFieldKey = GlobalKey<FormFieldState>();
    final requestRepository = RequestRepositoryImpl();
    final commentController = TextEditingController();
    showBottomSheet(
      context: context,
      backgroundColor: AdaptiveTheme.of(context).theme.cardTheme.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      //backgroundColor: kDarkBackgroundColor,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Добавить комментарий",
                        textAlign: TextAlign.center,
                        style: AdaptiveTheme.of(context)
                            .theme
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontSize: 24),
                      ),
                      //const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            color: kGray1Color,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
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
                        final validationState =
                            formFieldKey.currentState?.validate();
                        if (validationState == null || !validationState) {
                          return;
                        }

                        final progress = ProgressHUD.of(context);
                        progress?.show();

                        final addCommentDto = AddCommentDto(
                          requestId: requestId,
                          text: commentController.text,
                          images: [],
                        );

                        await requestRepository
                            .addCommentToRequest(addCommentDto)
                            .whenComplete(() {
                          onAddComment();
                          Navigator.of(context).pop();
                          progress?.dismiss();
                        });
                      },
                      text: "Добавить",
                      //options: ThesisButtonOptions(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
