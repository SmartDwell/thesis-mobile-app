import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';

/// Компонент текстового поля для фильтрации
class ThesisFilterField extends StatelessWidget {
  const ThesisFilterField({
    super.key,
    required this.onChanged,
  });

  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    final focusNotifier = ValueNotifier<bool>(false);
    final filterPatternController = TextEditingController();
    return ValueListenableBuilder(
      valueListenable: focusNotifier,
      builder: (context, isFocused, child) {
        final focusNode = FocusScopeNode();
        return Row(
          children: [
            Flexible(
              child: FocusScope(
                node: focusNode,
                child: Focus(
                  onFocusChange: (focus) {
                    focusNotifier.value = focus;
                    debugPrint("is focus -> $focus");
                  },
                  child: TextFormField(
                    controller: filterPatternController,
                    onChanged: (value) {
                      onChanged(value);
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: context.currentTheme.cardTheme.color,
                      hintText: 'Поиск',
                      prefixIcon: Icon(
                        Icons.search,
                        color: kDarkTextSecondaryColor.withOpacity(0.5),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          filterPatternController.text = '';
                          onChanged('');
                        },
                        icon: Icon(
                          Icons.close,
                          color: kDarkTextSecondaryColor.withOpacity(0.5),
                        ),
                      ),
                      labelStyle: const TextStyle(
                        //fontSize: 16,
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w600,
                        color: kDarkTextPrimaryColor,
                      ),
                      errorStyle: const TextStyle(
                        //fontSize: 14,
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w400,
                        color: kRedColor,
                      ),
                      hintStyle: TextStyle(
                        //fontSize: 16,
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.w400,
                        color: kDarkTextSecondaryColor.withOpacity(0.5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kRedColor.withOpacity(0.5),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kRedColor.withOpacity(0.5),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kPrimaryLightColor.withOpacity(0.25),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isFocused,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: GestureDetector(
                  onTap: () {
                    filterPatternController.text = '';
                    onChanged('');
                    focusNotifier.value = false;
                    focusNode.unfocus();
                  },
                  child: Text(
                    "Отменить",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: kPrimaryLightColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
