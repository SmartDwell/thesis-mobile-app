import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../theme/theme_colors.dart';
import '../../../theme/theme_constants.dart';
import '../../../theme/theme_extention.dart';

/// Базовый экран со скроллом
class ThesisSliverScreen extends StatelessWidget {
  const ThesisSliverScreen({
    super.key,
    required this.title,
    required this.child,
    this.floatingActionButton,
  });

  final String title;
  final Widget child;

  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    VisibilityDetectorController.instance.updateInterval = Duration.zero;
    final detector = ValueNotifier<bool>(true);
    return ValueListenableBuilder(
      valueListenable: detector,
      builder: (context, visibility, _) {
        return ProgressHUD(
          backgroundColor: context.currentTheme.scaffoldBackgroundColor,
          borderColor: context.currentTheme.textTheme.headlineLarge!.color!,
          indicatorColor: kPrimaryLightColor,
          child: Builder(builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                title: AnimatedOpacity(
                  opacity: !visibility ? 1 : 0,
                  duration: const Duration(milliseconds: 256),
                  child: Visibility(
                    visible: !visibility && title.isNotEmpty,
                    child: Text(
                      title,
                      style: AdaptiveTheme.of(context)
                          .theme
                          .textTheme
                          .headlineSmall,
                    ),
                  ),
                ),
              ),
              floatingActionButton: floatingActionButton,
              body: SingleChildScrollView(
                padding: kThemeDefaultPaddingHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    VisibilityDetector(
                      key: UniqueKey(),
                      onVisibilityChanged: (visibilityInfo) {
                        final count = visibilityInfo.visibleFraction;
                        final isVisibility = count > 0.250;
                        detector.value = isVisibility;
                      },
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: child,
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
