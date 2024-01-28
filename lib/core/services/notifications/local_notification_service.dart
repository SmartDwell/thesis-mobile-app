import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

import '../../../src/requests/repositories/request_repository_impl.dart';
import '../../../src/requests/screens/details/request_details_screen.dart';
import '../../helpers/google_service_checker.dart';

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // handle action
}

/// Типы уведомлений
class NotificationType {
  /// Произвольное уведомление
  static const String any = "0";

  /// Новый комментарий к заявке
  static const String newCommentOnRequest = "1";

  /// Новый статус у заявки
  static const String newStatusOnRequest = "2";

  /// Новая новость
  static const String newNews = "3";

  /// Новый платеж
  static const String newPayment = "4";
}

/// Сервис работы с уведомлениями
class LocalNotificationService {
  static const _channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // name
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
    playSound: true,
  );

  static final _notificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<String?> getFirebaseToken() async {
    if (!await GoogleServiceChecker.isAvailable) return null;

    return await FirebaseMessaging.instance.getToken() ?? null;
  }

  /// Инициализировать плагин отправки уведомлений
  static Future<void> initialize() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );

    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(alert: true, badge: true, sound: true);

    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        final payload = response.payload;
        debugPrint("Пользователь нажал на полученное уведомление");
        debugPrint("payload -> $payload");
        if (payload == null || payload.isEmpty) {
          return;
        }

        final data = json.decode(payload) as Map<String, dynamic>;
        handleNotificationClick(data);
      },
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );
  }

  /// Обработать клик по уведомлению
  static Future<void> handleNotificationClick(Map<String, dynamic> data) async {
    debugPrint("data -> $data");
    try {
      switch (data["Type"]) {
        case NotificationType.newCommentOnRequest:
        case NotificationType.newStatusOnRequest:
          if (data.containsKey("RequestId")) {
            final requestId = data["RequestId"].toString();
            final requestRepository = RequestRepositoryImpl();
            final requestDto = await requestRepository.loadRequestById(
              requestId,
            );
            navService.push(
              MaterialPageRoute(
                builder: (_) => RequestDetailsScreen(
                  requestDto: requestDto,
                ),
              ),
            );
          }
          break;
        case NotificationType.newNews:
          break;
      }
    } on Exception catch (e) {
      debugPrint(
        "LocalNotificationService -> handleNotificationClick(data) -> e -> $e",
      );
    }
  }

  /// Показать уведомление
  static Future<void> showNotification(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          channelDescription: _channel.description,
          importance: Importance.max,
          priority: Priority.high,
          color: Colors.black,
          playSound: true,
          icon: "@mipmap/ic_launcher",
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          sound: 'default',
        ),
      );

      await _notificationsPlugin.show(
        id,
        message.notification?.title,
        message.notification?.body,
        notificationDetails,
        payload: json.encode(message.data),
      );
    } on Exception catch (e) {
      debugPrint(
        "LocalNotificationService -> createAndDisplayNotification(message) -> e -> $e",
      );
    }
  }
}
