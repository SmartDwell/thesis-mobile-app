import 'user_repository.dart';

/// Репозиторий пользователя
class UserRepositoryImpl implements IUserRepository {
  @override
  Future<List<String>> getApartmentIds() {
    return Future.value(['2c16c349-73a7-4bca-ab5f-933323805057']);
  }
}
