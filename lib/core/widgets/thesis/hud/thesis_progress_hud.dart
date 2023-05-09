import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_extention.dart';
import '../thesis_progress_bar.dart';
import 'thesis_progress_hud_provider.dart';

class ThesisProgressHud extends StatelessWidget {
  const ThesisProgressHud({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    ThesisProgressHudProvider thesisProgressHudProvider,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<ThesisProgressHudProvider>(
      create: (context) => ThesisProgressHudProvider(),
      child: Builder(
        builder: (builderContext) {
          return Consumer<ThesisProgressHudProvider>(
            builder: (context, provider, _) {
              return Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  builder(context, provider),
                  Visibility(
                    visible: provider.isShow,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: size.width,
                          height: size.height,
                          color: Colors.black45,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.currentTheme.cardTheme.color,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: ThesisProgressBar(
                              size: Size(36, 36),
                              strokeWidth: 3,
                              color: kPrimaryLightColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
