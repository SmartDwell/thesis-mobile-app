import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'thesis_hud_notifier.dart';

abstract class ThesisHudScope {
  static ThesisHudNotifier of(BuildContext context) {
    return context.read<ThesisHudNotifier>();
  }

  static bool isShow(BuildContext context) => of(context).isShow;

  static void show(BuildContext context) => of(context).show();

  static void dismiss(BuildContext context) => of(context).dismiss();
}
