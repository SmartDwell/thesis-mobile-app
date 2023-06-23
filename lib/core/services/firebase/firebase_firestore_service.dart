import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

import '../../../shared/repositories/user/user_repository_impl.dart';
import '../../helpers/google_service_checker.dart';
import '../../repositories/tokens/tokens_repository_impl.dart';
import 'firebase_message_service.dart';

/// Сервис работы с Firestore
abstract class FirebaseFirestoreService {
  static final _tokensRepository = TokensRepositoryImpl();
  static final _userRepository = UserRepositoryImpl();

  /// Отправить токен устройства в firestore
  static Future<void> sendDevicePushNotificationToken() async {
    if (!await GoogleServiceChecker.isAvailable) return;

    debugPrint(
      'FirebaseFirestoreService -> sendDevicePushNotificationToken',
    );

    final accessToken = await _tokensRepository.getAccessToken();
    if (accessToken == null || accessToken.isEmpty) {
      throw Exception('Пользователь не авторизован');
    }

    final existUserInfo = await _userRepository.existUserInfoIntoCache();
    if (!existUserInfo) {
      throw Exception('Нет информации о пользователе');
    }

    final storage = FirebaseFirestore.instance;

    final user = await _userRepository.getUserFromCache();
    final messageToken = await FirebaseMessageService.messageToken;

    final tokenCollection = storage
        .collection('users')
        .doc("7${user.phone}")
        .collection('tokens')
        .doc(messageToken);

    await tokenCollection.set({
      'token': messageToken,
      'createdAt': FieldValue.serverTimestamp(),
      'platform': Platform.operatingSystem
    });
  }

  /// Удалить токен устройства в Firestore
  static Future<void> removeDevicePushNotificationToken() async {
    if (!await GoogleServiceChecker.isAvailable) return;

    debugPrint(
      'FirebaseFirestoreService -> removeDevicePushNotificationToken',
    );

    final accessToken = await _tokensRepository.getAccessToken();
    if (accessToken == null || accessToken.isEmpty) {
      throw Exception('Пользователь не авторизован');
    }

    final existUserInfo = await _userRepository.existUserInfoIntoCache();
    if (!existUserInfo) {
      throw Exception('Нет информации о пользователе');
    }

    final storage = FirebaseFirestore.instance;

    final user = await _userRepository.getUserFromCache();

    final batch = storage.batch();
    final tokenCollection =
        storage.collection('users').doc("7${user.phone}").collection('tokens');
    final snapshots = await tokenCollection.get();
    for (final doc in snapshots.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  }
}
