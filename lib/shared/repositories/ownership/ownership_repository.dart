import '../../contracts/ownership_dto/ownership_dto.dart';

abstract class IOwnershipRepository {
  /// Загрузить владения пользователя с сервера
  Future<bool> loadOwnershipFromServer();

  /// Получить владения пользователя из кэша
  Future<List<OwnershipDto>> getOwnershipFromCache();

  /// Сохранить владения пользователя в кэш
  Future<bool> saveOwnershipIntoCache(List<OwnershipDto> ownerships);

  /// Получить идентификаторы квартир пользователя
  Future<List<String>> getApartmentIds();
}
