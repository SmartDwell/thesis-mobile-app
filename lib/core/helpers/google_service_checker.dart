import 'package:flutter/services.dart';
import 'package:google_api_availability/google_api_availability.dart';

/// Сервис проверки доступности Google Services
abstract class GoogleServiceChecker {
  static Future<GooglePlayServicesAvailability>
      _getGoogleServiceStatus() async {
    var status = GooglePlayServicesAvailability.unknown;
    try {
      return await GoogleApiAvailability.instance
          .checkGooglePlayServicesAvailability();
    } on PlatformException {
      status = GooglePlayServicesAvailability.unknown;
    }
    return status;
  }

  /// Признак доступности Google Services
  static Future<bool> get isAvailable async =>
      await _getGoogleServiceStatus() == GooglePlayServicesAvailability.success;
}
