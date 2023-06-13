import '../../contracts/ownership_dto/ownership_dto.dart';
import 'ownership_repository.dart';

class OwnershipRepositoryImpl implements IOwnershipRepository {
  @override
  Future<List<String>> getApartmentIds() {
    // TODO: implement getApartmentIds
    throw UnimplementedError();
  }

  @override
  Future<List<OwnershipDto>> getOwnershipFromCache() {
    // TODO: implement getOwnershipFromCache
    throw UnimplementedError();
  }

  @override
  Future<bool> loadOwnershipFromServer() {
    throw UnimplementedError();
  }

  @override
  Future<bool> saveOwnershipIntoCache(List<OwnershipDto> ownership) {
    // TODO: implement saveOwnershipIntoCache
    throw UnimplementedError();
  }
}
