import 'package:firebase_core/firebase_core.dart';

import '../../helpers/google_service_checker.dart';
import 'firebase_options.dart';

/// Сервис работы с Firebase
abstract class FirebaseService {
  /// Инициализация сервиса
  static Future<void> init() async {
    if (!await GoogleServiceChecker.isAvailable) return;

    await Firebase.initializeApp(
      name: 'thesis-app',
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
