/// Интерфейс репозитория пользователей
abstract class IUserRepository {
  /// Получить идентификаторы квартир пользователя
  Future<List<String>> getApartmentIds();
}
