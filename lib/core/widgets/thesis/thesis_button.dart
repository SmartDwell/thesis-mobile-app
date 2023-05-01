import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';
import 'thesis_progress_bar.dart';

class ThesisButtonOptions {
  final bool isOutline;
  final double borderRadius;
  final double? width;
  final double height;
  final TextStyle? titleStyle;
  final Color? backgroundColor;

  const ThesisButtonOptions({
    this.isOutline = false,
    this.borderRadius = 16,
    this.width,
    this.height = 56,
    this.titleStyle,
    this.backgroundColor,
  });
}

class ThesisOutlinedButton extends StatelessWidget {
  const ThesisOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

/// Компонент базовой кнопки
class ThesisButton extends StatelessWidget {
  ThesisButton({
    super.key,
    required this.child,
    this.text,
    this.options = const ThesisButtonOptions(),
    required this.onPressed,
    this.isDisabled = false,
  });

  /// Кнопка из текста
  factory ThesisButton.fromText({
    Key? key,
    required String text,
    required void Function() onPressed,
    ThesisButtonOptions options = const ThesisButtonOptions(),
    bool isDisabled = false,
    bool isLoading = false,
  }) {
    return ThesisButton(
      key: key,
      child: null,
      text: text,
      options: options,
      onPressed: onPressed,
      isDisabled: isDisabled,
    );
  }

  final Widget? child;
  final String? text;
  final ThesisButtonOptions options;
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
              options.isOutline
                  ? AdaptiveTheme.of(context).theme.scaffoldBackgroundColor
                  : isDisabled || isLoading
                      ? kGray2Color
                      : kPrimaryColor,
            ),
            // foregroundColor: MaterialStateProperty.all<Color>(
            //   options?.isOutline ?? false
            //       ? kPrimaryColor
            //       : isDisabled || isLoading
            //           ? kGray1Color
            //           : kDarkTextPrimaryColor,
            // ),
            fixedSize: MaterialStateProperty.all<Size>(
              Size(options.width ?? buttonWidth, options.height),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(options.borderRadius),
                side: options.isOutline
                    ? const BorderSide(color: kPrimaryColor)
                    : BorderSide.none,
              ),
            ),
          ),
          onPressed: isDisabled
              ? null
              : () async {
                  isLoadingNotifier.value = true;
                  onPressed();
                  await Future.delayed(const Duration(seconds: 2)).whenComplete(
                    () => isLoadingNotifier.value = false,
                  );
                },
          child: _ThesisButtonContent(
            child: child,
            text: text,
            isLoading: isLoading,
            isDisabled: isDisabled,
            textStyle: options.titleStyle,
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
    this.textStyle,
    required this.isDisabled,
    required this.isLoading,
  });

  final Widget? child;
  final String? text;
  final TextStyle? textStyle;
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
                      : textStyle ?? Theme.of(context).textTheme.labelLarge,
                )
              : child,
    );
  }
}
