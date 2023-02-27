import 'package:flutter/material.dart';

/// Компонент базовой страницы
class ThesisBasePage extends StatelessWidget {
  const ThesisBasePage({
    super.key,
    required this.child,
    this.onTap,
    this.padding,
  });

  final Widget child;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap!() : FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
        child: child,
      ),
    );
  }
}
