import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_api_availability/google_api_availability.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

import '../../../src/requests/repositories/request_repository_impl.dart';

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
  static Future<GooglePlayServicesAvailability> getGoogleServiceStatus() async {
    var status = GooglePlayServicesAvailability.unknown;
    try {
      return await GoogleApiAvailability.instance
          .checkGooglePlayServicesAvailability();
    } on PlatformException {
      status = GooglePlayServicesAvailability.unknown;
    }
    return status;
  }

  static const _channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // name
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
    playSound: true,
  );

  static final _notificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<String?> getFirebaseToken() async {
    if (await getGoogleServiceStatus() !=
        GooglePlayServicesAvailability.success) return null;

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
    switch (data["Type"]) {
      case NotificationType.newCommentOnRequest:
      case NotificationType.newStatusOnRequest:
        if (data.containsKey("RequestId")) {
          final id = int.parse(data["RequestId"]);
          final requestRepository = RequestRepositoryImpl();
          final request = await requestRepository.getRequestById(id);
          if (request != null) {
            final images = await RequestsRepository().getRequestImages(id);
            navService.push(
              MaterialPageRoute(
                builder: (_) => RequestDetailScreen(
                  request: request,
                  images: images,
                ),
              ),
            );
          }
        }
        break;
      case NotificationType.newNews:
        if (data.containsKey("NewsId")) {
          final id = int.parse(data["NewsId"]);
          final news = await NewsProvider().getNewsById(id);
          if (news != null) {
            navService.push(
              MaterialPageRoute(
                builder: (_) => NewsDetailsScreen(
                  news: news,
                ),
              ),
            );
          }
        }
        break;
    }
  }

  /// Показать уведомление
  static Future<void> showNotification(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final notificationDetails = NotificationDetails(
        android: const AndroidNotificationDetails(
          "flutter_push_notification_app",
          "flutter_push_notification_app",
          importance: Importance.max,
          priority: Priority.high,
          color: Colors.black,
          playSound: true,
          icon: "@mipmap/ic_launcher",
        ),
        iOS: IOSNotificationDetails(
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
