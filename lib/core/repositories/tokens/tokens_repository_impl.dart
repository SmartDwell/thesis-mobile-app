import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../helpers/dio_helper.dart';
import 'tokens_repository.dart';

/// Репозиторий работы с токенами
@immutable
class TokensRepositoryImpl implements TokensRepository {
  String get _accessToken => TokensRepository.accessTokenKey;
  String get _refreshToken => TokensRepository.refreshTokenKey;

  @override
  Future<void> saveTokens(String accessToken, String refreshToken) async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    await storage.write(key: _accessToken, value: accessToken);
    await storage.write(key: _refreshToken, value: refreshToken);
  }

  @override
  Future<String?> getAccessToken() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    return storage.read(key: _accessToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    return storage.read(key: _refreshToken);
  }

  @override
  Future<void> deleteTokens() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    await storage.delete(key: _accessToken);
    await storage.delete(key: _refreshToken);
  }

  @override
  Future<bool> updateTokensFromServer() async {
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
      return true;
    }

    await deleteTokens();
    throw Exception('Не удалось обновить токены!');
  }
}
