import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/helpers/dio_helper.dart';
import '../../../core/repositories/tokens/tokens_repository_impl.dart';
import '../../contracts/ownership_dto/ownership_dto.dart';
import '../user/user_repository_impl.dart';
import 'ownership_repository.dart';

class OwnershipRepositoryImpl implements IOwnershipRepository {
  static const String _ownershipKey = '_ownershipKey';
  final _tokensRepository = TokensRepositoryImpl();
  final _userRepository = UserRepositoryImpl();

  @override
  Future<List<String>> getApartmentIds() async {
    try {
      final ownerships = await getOwnershipFromCache();
      final apartmentIds = ownerships.map((e) => e.apartmentId).toList();
      return Future.value(apartmentIds);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<OwnershipDto>> getOwnershipFromCache() async {
    try {
      const storage = FlutterSecureStorage();
      final ownershipsString = await storage.read(key: _ownershipKey);
      if (ownershipsString == null) {
        throw Exception('Не найдена информация о собственности');
      }

      final ownershipsJson = json.decode(ownershipsString);
      final ownerships = (ownershipsJson as List<dynamic>)
          .map((e) => OwnershipDto.fromJson(e))
          .toList();
      return Future.value(ownerships);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveOwnershipIntoCache(List<OwnershipDto> ownerships) {
    try {
      const storage = FlutterSecureStorage();
      final ownershipsJson = ownerships.map((e) => e.toJson()).toList();
      storage.write(key: _ownershipKey, value: json.encode(ownershipsJson));
      return Future.value(true);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> loadOwnershipFromServer() async {
    try {
      final userId = await _userRepository.getUserIdFromCache();
      final accessToken = await _tokensRepository.getAccessToken();

      final response = await DioHelper.getData(
        url: '/ownership/$userId',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          final ownerships = (response.data as List<dynamic>)
              .map((e) => OwnershipDto.fromJson(e))
              .toList();
          return saveOwnershipIntoCache(ownerships);
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }
}
