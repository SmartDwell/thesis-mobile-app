import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';
import 'thesis_progress_bar.dart';

/// Компонент базовой кнопки
class ThesisButton extends StatelessWidget {
  ThesisButton({
    super.key,
    required this.child,
    this.text,
    required this.onPressed,
    this.isDisabled = false,
  });

  /// Кнопка из текста
  factory ThesisButton.fromText({
    Key? key,
    required String text,
    required void Function() onPressed,
    bool isDisabled = false,
    bool isLoading = false,
  }) {
    return ThesisButton(
      key: key,
      child: null,
      text: text,
      onPressed: onPressed,
      isDisabled: isDisabled,
    );
  }

  final Widget? child;
  final String? text;
  final void Function() onPressed;
  final bool isDisabled;
  final ValueNotifier<bool> isLoadingNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width;
    return ValueListenableBuilder(
      valueListenable: isLoadingNotifier,
      builder: (context, isLoading, child) {
        return ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              isDisabled || isLoading ? kGray2Color : kPrimaryColor,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              isDisabled || isLoading ? kGray1Color : kDarkTextPrimaryColor,
            ),
            fixedSize: MaterialStateProperty.all<Size>(
              Size(buttonWidth, 56),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          onPressed: isDisabled
              ? null
              : () async {
                  isLoadingNotifier.value = true;
                  await Future.delayed(
                    const Duration(milliseconds: 500),
                    () => onPressed(),
                  ).whenComplete(() => isLoadingNotifier.value = false);
                },
          child: _ThesisButtonContent(
            child: child,
            text: text,
            isLoading: isLoading,
            isDisabled: isDisabled,
          ),
        );
      },
    );
  }
}

class _ThesisButtonContent extends StatelessWidget {
  const _ThesisButtonContent({
    this.child,
    this.text,
    required this.isDisabled,
    required this.isLoading,
  });

  final Widget? child;
  final String? text;
  final bool isDisabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isLoading
          ? const ThesisProgressBar()
          : text != null
              ? Text(
                  text!,
                  style: isDisabled
                      ? Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w600)
                      : Theme.of(context).textTheme.labelLarge,
                )
              : child,
    );
  }
}
