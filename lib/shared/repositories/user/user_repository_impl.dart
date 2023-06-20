import 'dart:convert';

import '../../../core/constants/constants.dart';
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
      final userString = await storage.read(key: _userKey);
      if (userString == null) {
        throw Exception('Не найдена информация о пользователе');
      }

      final userJson = json.decode(userString);
      final user = UserDto.fromJson(userJson);
      return Future.value(user);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveUserIntoCache(UserDto user) async {
    try {
      final userJson = user.toJson();
      final id = userJson['id'];
      await storage.write(key: _userKey, value: json.encode(userJson));
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
        url: '/user/$id',
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
      final id = await storage.read(key: _userIdKey);
      return id ?? '';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveUserIdIntoCache(String id) async {
    try {
      await storage.write(key: _userIdKey, value: id);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
