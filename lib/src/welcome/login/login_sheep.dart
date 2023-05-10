import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/bottom_sheep/thesis_bottom_sheep_body.dart';
import '../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import 'screens/login_request_code_screen.dart';
import 'screens/login_verify_code_screen.dart';

class LoginSheep {
  static void showRequestCodeScreen(BuildContext context) {
    globalScaffoldKey.currentState!.showBottomSheet(
      (context) {
        return const ThesisBottomSheepBody(
          header: ThesisBottomSheepHeader(),
          child: LoginRequestCodeScreen(),
        );
      },
      constraints: BoxConstraints.expand(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
      ),
      backgroundColor: Colors.transparent,
    );
  }

  static void showVerifyCodeScreen(
    BuildContext context, {
    required String ticketId,
    required String username,
  }) {
    globalScaffoldKey.currentState!.showBottomSheet(
      (context) {
        return ThesisBottomSheepBody(
          header: const ThesisBottomSheepHeader(),
          child: LoginVerifyCodeScreen(
            ticketId: ticketId,
            username: username,
          ),
        );
      },
      constraints: BoxConstraints.expand(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
