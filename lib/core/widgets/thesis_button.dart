import 'package:flutter/material.dart';

import '../../theme/theme_colors.dart';
import 'thesis_progress_bar.dart';

class ThesisButton extends StatelessWidget {
  const ThesisButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.isDisabled = false,
    this.isLoading = false,
  });

  final Widget child;
  final void Function() onPressed;
  final bool isDisabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isDisabled ? kGray2Color : kPrimaryColor,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          isDisabled ? kGray1Color : kDarkTextPrimaryColor,
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
      child: isLoading ? const ThesisProgressBar() : child,
    );
  }
}
