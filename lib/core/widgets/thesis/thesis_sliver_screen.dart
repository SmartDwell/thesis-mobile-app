import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../theme/theme_constants.dart';

class ThesisSliverScreen extends StatelessWidget {
  const ThesisSliverScreen({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    VisibilityDetectorController.instance.updateInterval = Duration.zero;
    final detector = ValueNotifier<bool>(true);
    return ValueListenableBuilder(
      valueListenable: detector,
      builder: (context, visibility, _) {
        return Scaffold(
          appBar: AppBar(
            title: AnimatedOpacity(
              opacity: !visibility ? 1 : 0,
              duration: const Duration(milliseconds: 256),
              child: Visibility(
                visible: !visibility && title.isNotEmpty,
                child: Text(title),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8,
                    left: kThemeDefaultPaddingHorizontal.left,
                    right: kThemeDefaultPaddingHorizontal.right,
                  ),
                  child: VisibilityDetector(
                    key: UniqueKey(),
                    onVisibilityChanged: (visibilityInfo) {
                      final count = visibilityInfo.visibleFraction;
                      final isVisibility = count > 0.250;
                      detector.value = isVisibility;
                    },
                    child: Text(
                      'Ваши заявки',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
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
      },
    );
  }
}
