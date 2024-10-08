import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_extention.dart';

class BoundsWidget extends StatelessWidget {
  const BoundsWidget({
    required this.isEvenBounds,
    super.key,
  });

  final bool isEvenBounds;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: isEvenBounds,
          child: SvgPicture.asset(
            'assets/images/introduction/bounds_2.svg',
          ),
          replacement: SvgPicture.asset(
            'assets/images/introduction/bounds_1.svg',
          ),
        ),
        SvgPicture.asset(
          'assets/images/introduction/bounds_card.svg',
          color: context.currentTheme.cardTheme.color,
        ),
        SvgPicture.asset(
          'assets/images/logo.svg',
          color: kPrimaryLighterColor,
          width: 82,
          height: 82,
        ),
      ],
    );
  }
}
