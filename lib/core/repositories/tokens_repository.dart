import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../helpers/dio_helper.dart';

class TokensRepository {
  final String _accessToken = '_access_token';
  final String _refreshToken = '_refresh_token';

  Future<void> saveTokens(String accessToken, String refreshToken) async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    await storage.write(key: _accessToken, value: accessToken);
    await storage.write(key: _refreshToken, value: refreshToken);
  }

  Future<String?> getAccessToken() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    return storage.read(key: _accessToken);
  }

  Future<String?> getRefreshToken() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    return storage.read(key: _refreshToken);
  }

  Future<void> deleteTokens() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    await storage.delete(key: _accessToken);
    await storage.delete(key: _refreshToken);
  }

  Future<void> updateTokensFromServer() async {
    final data = {
      'refreshToken': await getRefreshToken(),
    };

    final response = await DioHelper.postData(
      url: '/auth/refresh',
      data: data,
      useAuthErrorInterceptor: false,
    );

    if (response.statusCode == 200) {
      await saveTokens(
        response.data['accessToken'],
        response.data['refreshToken'],
      );
      return;
    }

    await deleteTokens();
    throw Exception('Не удалось обновить токены!');
  }
}
