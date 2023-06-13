import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/helpers/dio_helper.dart';
import '../../../core/repositories/tokens/tokens_repository_impl.dart';
import '../../contracts/user_dto/user_dto.dart';
import 'user_repository.dart';

/// Репозиторий пользователя
class UserRepositoryImpl implements IUserRepository {
  static const _userKey = '_userKey';
  static const _userIdKey = '_userIdKey';
  final _tokensRepository = TokensRepositoryImpl();

  @override
  Future<UserDto> getUserFromCache() async {
    try {
      const storage = FlutterSecureStorage();
      final userJson = await storage.read(key: _userKey);
      final user = UserDto.fromJson(json.decode(userJson!));
      return Future.value(user);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveUserIntoCache(UserDto user) {
    try {
      const storage = FlutterSecureStorage();
      final userJson = user.toJson();
      final id = userJson['id'];
      storage.write(key: _userKey, value: userJson.toString());
      return saveUserIdIntoCache(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> loadUserFromServer() async {
    try {
      final id = await getUserIdFromCache();
      final accessToken = await _tokensRepository.getAccessToken();

      final response = await DioHelper.getData(
        url: '/requests/$id',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          final user = UserDto.fromJson(response.data);
          return saveUserIntoCache(user);
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> getUserIdFromCache() async {
    try {
      const storage = FlutterSecureStorage();
      final id = await storage.read(key: _userIdKey);
      return id ?? '';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveUserIdIntoCache(String id) {
    try {
      const storage = FlutterSecureStorage();
      storage.write(key: _userIdKey, value: id);
      return Future.value(true);
    } catch (e) {
      rethrow;
    }
  }
}
