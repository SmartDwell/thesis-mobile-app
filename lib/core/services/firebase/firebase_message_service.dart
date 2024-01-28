import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../helpers/google_service_checker.dart';
import '../notifications/local_notification_service.dart';
import 'firebase_service.dart';

/// Обработчик сообщений, когда приложение закрыто
Future<void> _firebaseMessagingBackgroundHandler(
  RemoteMessage message,
) async {
  await FirebaseService.init();
}

/// Сервис работы с Firebase Messaging
abstract class FirebaseMessageService {
  static Future<void> init() async {
    if (!await GoogleServiceChecker.isAvailable) return;

    final messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await LocalNotificationService.initialize();

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 1. Этот метод вызывается, когда приложение находится в завершенном состоянии, и вы получаете уведомление
    // когда вы нажимаете на уведомление, приложение открывается из завершенного состояния и
    // вы можете получить данные уведомления с помощью этого метода
    FirebaseMessaging.instance.getInitialMessage().then((message) async {
      debugPrint("FirebaseMessaging.getInitialMessage");
      if (message != null && message.notification != null) {
        await LocalNotificationService.handleNotificationClick(message.data);
      }
    });

    // 2. Этот метод вызывается только тогда, когда приложение находится
    // на переднем плане, это означает, что приложение должно быть открыто
    FirebaseMessaging.onMessage.listen((message) async {
      debugPrint("FirebaseMessaging.onMessage.listen");
      if (message.notification != null) {
        if (!Platform.isIOS) {
          await LocalNotificationService.showNotification(message);
        }
      }
    });

    // 3. Этот метод вызывается только тогда, когда приложение находится
    // в фоновом режиме и не завершается (не закрывается)
    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      debugPrint("FirebaseMessaging.onMessageOpenedApp.listen");
      if (Platform.isIOS) {
        await LocalNotificationService.handleNotificationClick(message.data);
      } else {
        FirebaseMessaging.instance.getInitialMessage().then((message) async {
          debugPrint("FirebaseMessaging.getInitialMessage");
          if (message != null && message.notification != null) {
            await LocalNotificationService.handleNotificationClick(
              message.data,
            );
          }
        });
      }
    });
  }

  static Future<String?> get messageToken async =>
      await FirebaseMessaging.instance.getToken();
}
