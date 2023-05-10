import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../bottom_sheep/thesis_bottom_sheep_body.dart';
import '../bottom_sheep/thesis_bottom_sheep_header.dart';

/// Компонент нижнего модального окна
class ThesisBottomSheep {
  static Future<void> showModalAsync(
    BuildContext context, {
    required Widget child,
    bool expand = true,
    Widget header = const ThesisBottomSheepHeader(),
  }) async {
    await showCustomModalBottomSheet(
        context: context,
        expand: expand,
        isDismissible: true,
        builder: (context) => child,
        containerWidget: (BuildContext context, Animation<double> animation,
            Widget childWidget) {
          final body = ThesisBottomSheepBody(
            header: header,
            body: child,
          );

          return expand ? body : Wrap(children: [body]);
        });
  }

  static void showSheep(
    BuildContext context, {
    required Widget child,
    bool expand = true,
    Widget header = const ThesisBottomSheepHeader(),
  }) async {
    showBottomSheet(
      context: context,
      backgroundColor: AdaptiveTheme.of(context).theme.cardTheme.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      builder: (context) {
        final body = ThesisBottomSheepBody(
          header: header,
          body: child,
        );

        return expand ? body : Wrap(children: [body]);
      },
    );
  }
}
