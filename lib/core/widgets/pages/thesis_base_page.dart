import 'package:flutter/material.dart';

/// Компонент базовой страницы
class ThesisBasePage extends StatelessWidget {
  const ThesisBasePage({
    super.key,
    required this.child,
    this.onWillPop,
    this.onTap,
    this.padding,
  });

  final Widget child;
  final void Function()? onTap;
  final Future<bool> Function()? onWillPop;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: GestureDetector(
        onTap: () => onTap ?? FocusScope.of(context).unfocus(),
        child: child,
      ),
    );
  }
}
