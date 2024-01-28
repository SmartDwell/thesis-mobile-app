import '../../contracts/user_dto/user_dto.dart';

/// Интерфейс репозитория пользователей
abstract class IUserRepository {
  /// Загрузить пользователя с сервера
  Future<bool> loadUserFromServer();

  Future<bool> existUserInfoIntoCache();

  /// Получить пользователя из кэша
  Future<UserDto> getUserFromCache();

  /// Сохранить пользователя в кэш
  Future<bool> saveUserIntoCache(UserDto user);

  /// Сохранить идентификатор пользователя в кэш
  Future<bool> saveUserIdIntoCache(String id);

  /// Получить идентификатор пользователя из кэша
  Future<String> getUserIdFromCache();
}
