import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'thesis_hud_notifier.dart';

class ThesisHud extends StatelessWidget {
  const ThesisHud({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThesisHudNotifier>(
      builder: (context, notifier, _) {
        if (!notifier.isShow) return child;
        return Stack(
          alignment: Alignment.center,
          children: [
            child,
            Container(
              color: Colors.black54,
            ),
            Positioned(
              child: FittedBox(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: notifier.caption.isNotEmpty ? 36 : 24,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            color: Theme.of(context).primaryColorLight,
                          ),
                          Visibility(
                            visible: notifier.caption.isNotEmpty,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                notifier.caption,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
