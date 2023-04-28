import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../theme/theme_colors.dart';

/// Компонент нижнего модального окна
class ThesisBottomSheep {
  static void showSheep(
    BuildContext context, {
    required Widget child,
  }) async {
    showBottomSheet(
      context: context,
      enableDrag: true,
      backgroundColor: AdaptiveTheme.of(context).theme.cardTheme.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      builder: (context) => child,
    );
  }

  /// Отобразить
  static void show(
    BuildContext context, {
    required Widget child,
  }) {
    showCustomModalBottomSheet(
      context: context,
      expand: true,
      isDismissible: true,
      builder: (context) => child,
      containerWidget: (BuildContext context, Animation<double> animation,
          Widget childWidget) {
        return Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.175,
          ),
          child: Material(
            color: Theme.of(context).cardTheme.color,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 54,
                  decoration: const BoxDecoration(
                    color: kDarkBackgroundTertiaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Container(
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF242424),
                  ),
                ),
                childWidget,
              ],
            ),
          ),
        );
      },
    );
  }
}
