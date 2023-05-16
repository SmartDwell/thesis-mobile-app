import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/assets_constants.dart';

/// Компонент карты
class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SvgPicture.asset(
      ThesisImages.map,
      width: size.width,
      height: size.height,
      fit: BoxFit.fill,
    );
  }
}
