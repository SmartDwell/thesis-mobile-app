import 'package:flutter/material.dart';

import '../../theme/theme_colors.dart';
import 'thesis_progress_bar.dart';

class ThesisButton extends StatelessWidget {
  const ThesisButton({
    super.key,
    required this.child,
    this.text,
    required this.onPressed,
    this.isDisabled = false,
    this.isLoading = false,
  });

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
      isLoading: isLoading,
    );
  }

  final Widget? child;
  final String? text;
  final void Function() onPressed;
  final bool isDisabled;
  final bool isLoading;

  bool get isButtonDisabled => isDisabled || isLoading;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isButtonDisabled ? kGray2Color : kPrimaryColor,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          isButtonDisabled ? kGray1Color : kDarkTextPrimaryColor,
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
      onPressed: isDisabled ? null : onPressed,
      child: _ThesisButtonContent(
        child: child,
        text: text,
        isLoading: isLoading,
        isDisabled: isDisabled,
      ),
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
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.w600)
                      : Theme.of(context).textTheme.subtitle1,
                )
              : child,
    );
  }
}
