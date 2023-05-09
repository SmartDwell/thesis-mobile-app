import 'package:flutter/material.dart';

import '../../theme/theme_colors.dart';

/// Помощник работы с Snackbar-сообщениями
class MessageHelper {
  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static const _showDuration = Duration(milliseconds: 2500);
  static const _padding = EdgeInsets.all(12);

  static void _showDefaultMessage({
    required BuildContext context,
    required bool isSuccess,
    required String message,
    double fontSize = 16,
  }) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: Theme.of(context).cardTheme.color,
        duration: _showDuration,
        content: Padding(
          padding: _padding,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: isSuccess
                    ? const Icon(Icons.check, size: 32, color: kGreenColor)
                    : const Icon(Icons.close, size: 32, color: kRedColor),
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Theme.of(context).textTheme.titleMedium?.color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Отобразить кастомное сообщение
  static void showCustomMessage({
    required BuildContext context,
    required Widget child,
  }) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: Theme.of(context).cardTheme.color,
        duration: _showDuration,
        content: child,
      ),
    );
  }

  /// Вывод сообщения об ошибке
  static void showError({
    required BuildContext context,
    required String message,
  }) {
    _showDefaultMessage(context: context, isSuccess: false, message: message);
  }

  /// Вывод сообщения об успешном выполнении
  static void showSuccess({
    required BuildContext context,
    required String message,
  }) {
    _showDefaultMessage(context: context, isSuccess: true, message: message);
  }

  /// Вывод сообщения по статусу
  static void showByStatus({
    required BuildContext context,
    required bool isSuccess,
    String successMessage = "",
    String errorMessage = "",
    double fontSize = 16,
  }) {
    _showDefaultMessage(
      context: context,
      isSuccess: isSuccess,
      message: isSuccess ? successMessage : errorMessage,
      fontSize: fontSize,
    );
  }

  /// Вывод информационного сообщения
  static void showInfo({
    required BuildContext context,
    required String message,
    bool showOk = false,
  }) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: Theme.of(context).cardTheme.color,
        duration: const Duration(seconds: 5),
        content: Padding(
          padding: _padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).textTheme.titleMedium?.color,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Visibility(
                  visible: showOk,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: GestureDetector(
                      child: Text(
                        "Ок, понятно".toUpperCase(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: kPrimaryLightColor,
                        ),
                      ),
                      onTap: () {
                        rootScaffoldMessengerKey.currentState
                            ?.hideCurrentSnackBar();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
