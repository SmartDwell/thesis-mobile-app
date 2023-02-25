import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

abstract class ProgressHudScope {
  static void start(BuildContext context) {
    final progress = ProgressHUD.of(context);
    progress?.show();
  }

  static void dismiss(BuildContext context) {
    final progress = ProgressHUD.of(context);
    progress?.dismiss();
  }
}
