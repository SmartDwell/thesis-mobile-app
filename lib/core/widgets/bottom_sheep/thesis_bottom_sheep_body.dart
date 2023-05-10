import 'package:flutter/material.dart';

/// Тело для BottomSheep
class ThesisBottomSheepBody extends StatelessWidget {
  const ThesisBottomSheepBody({
    super.key,
    required this.header,
    required this.child,
  });

  final Widget header;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardTheme.color,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(12),
      ),
      child: Column(
        children: [
          header,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFF242424),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
