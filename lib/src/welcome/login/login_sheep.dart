import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/widgets/bottom_sheep/thesis_bottom_sheep_body.dart';
import '../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import 'screens/login_request_code_screen.dart';
import 'screens/login_verify_code_screen.dart';

/// BottomSheep для страниц логина
class LoginSheep {
  /// Показать страницу получения кода авторизации
  static void showRequestCodeScreen(BuildContext context) {
    globalScaffoldKey.currentState!.showBottomSheet(
      (context) {
        return GestureDetector(
          //onTap: () => FocusScope.of(context).unfocus(),
          child: const ThesisBottomSheepBody(
            header: ThesisBottomSheepHeader(),
            body: LoginRequestCodeScreen(),
            expandBody: true,
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

  /// Показать страницу подтверждения кода авторизации
  static void showVerifyCodeScreen(
    BuildContext context, {
    required String ticketId,
    required String username,
  }) {
    globalScaffoldKey.currentState!.showBottomSheet(
      (context) {
        return GestureDetector(
          //onTap: () => FocusScope.of(context).unfocus(),
          child: ThesisBottomSheepBody(
            header: const ThesisBottomSheepHeader(),
            body: LoginVerifyCodeScreen(
              ticketId: ticketId,
              username: username,
            ),
            expandBody: true,
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
