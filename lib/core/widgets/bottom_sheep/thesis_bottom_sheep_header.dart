import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';

class ThesisBottomSheepHeader extends StatelessWidget {
  const ThesisBottomSheepHeader({
    super.key,
    this.title,
    this.onPop,
  });

  final String? title;
  final void Function()? onPop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 54,
      decoration: const BoxDecoration(
        color: kDarkBackgroundTertiaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: (title ?? '').isEmpty,
              child: const Spacer(),
              replacement: Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                // ignore: prefer_null_aware_method_calls
                if (onPop != null) onPop!();
              },
              child: Container(
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
    );
  }
}
