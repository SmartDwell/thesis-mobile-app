import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/theme_colors.dart';

/// Экран загрузки
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          color: Colors.white,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
