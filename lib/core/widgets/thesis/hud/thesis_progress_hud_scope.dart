import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'thesis_progress_hud_provider.dart';

class ThesisProgressHudScope {
  static ThesisProgressHudProvider of(BuildContext context) {
    return context.read<ThesisProgressHudProvider>();
  }

  static void show(BuildContext context) {
    of(context).show();
  }

  static void hide(BuildContext context) {
    of(context).hide();
  }
}
