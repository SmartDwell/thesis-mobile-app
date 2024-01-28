import 'package:flutter/material.dart';

import '../../../core/helpers/dio_helper.dart';
import '../../../core/repositories/tokens/tokens_repository_impl.dart';
import '../../../shared/repositories/user/user_repository_impl.dart';
import '../contracts/add_comment_dto/add_comment_dto.dart';
import '../contracts/add_request_dto/add_request_dto.dart';
import '../contracts/incident_point_dto/incident_point_dto.dart';
import '../contracts/request_cancel_dto/request_cancel_dto.dart';
import '../contracts/request_comment_dto/request_comment_dto.dart';
import '../contracts/request_dto/request_dto.dart';
import '../contracts/request_edit_dto/request_edit_dto.dart';
import '../contracts/request_status_dto/request_status_dto.dart';
import 'request_repository.dart';

/// Репозиторий заявок
class RequestRepositoryImpl implements IRequestRepository {
  final _tokensRepository = TokensRepositoryImpl();
  final _userRepository = UserRepositoryImpl();

  @override
  Future<List<RequestDto>> loadRequests() async {
    try {
      final userId = await _userRepository.getUserIdFromCache();
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/requests/$userId',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          return (response.data as List<dynamic>)
              .map((e) => RequestDto.fromJson(e))
              .toList();
        default:
          debugPrint(response.data.toString());
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RequestDto> loadRequestById(String requestId) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/requests/$requestId/details',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          return RequestDto.fromJson(response.data);
        case 400:
          throw Exception('Передан некорректный идентификатор заявки');
        case 404:
          throw Exception('Заявка не найдена');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<RequestCommentDto>> loadRequestComments(String requestId) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/requests/$requestId/comments',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          return (response.data as List<dynamic>)
              .map((e) => RequestCommentDto.fromJson(e))
              .toList();
        case 400:
          throw Exception('Передан некорректный идентификатор заявки');
        case 404:
          throw Exception('Заявка не найдена');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> addCommentToRequest(
      String requestId, AddCommentDto addCommentDto) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.postData(
        url: '/requests/$requestId/comments',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: addCommentDto.toJson(),
      );

      switch (response.statusCode) {
        case 204:
          return true;
        case 400:
          throw Exception('Передан некорректный идентификатор заявки');
        case 404:
          throw Exception('Заявка не найдена');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<RequestStatusDto>> loadRequestStatuses(String requestId) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/requests/$requestId/statuses',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          return (response.data as List<dynamic>)
              .map((e) => RequestStatusDto.fromJson(e))
              .toList();
        case 400:
          throw Exception('Передан некорректный идентификатор заявки');
        case 404:
          throw Exception('Заявка не найдена');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> addRequest(AddRequestDto addRequestDto) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.postData(
        url: '/requests',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: addRequestDto.toJson(),
      );

      switch (response.statusCode) {
        case 200:
          return true;
        case 400:
          throw Exception('Переданы некорректные данные');
        default:
          debugPrint('RequestRepositoryImpl -> addRequest -> ${response.data}');
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> cancelRequest(
      String requestId, RequestCancelDto requestCancelDto) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.postData(
        url: '/requests/$requestId/statuses',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: requestCancelDto.toJson(),
      );

      switch (response.statusCode) {
        case 204:
          return true;
        case 400:
          throw Exception('Переданы некорректные данные');
        case 404:
          throw Exception('Заявка не найдена');
        case 409:
          throw Exception(response.data);
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> editRequest(
      String requestId, RequestEditDto requestEditDto) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.patchData(
        url: '/requests/$requestId',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: requestEditDto.toJson(),
      );

      switch (response.statusCode) {
        case 200:
          return true;
        case 400:
          throw Exception('Переданы некорректные данные');
        case 404:
          throw Exception('Заявка не найдена');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<IncidentPointDto>> loadIncidentPointsByUserAparmentIds(
    List<String> userApartmentIds,
  ) async {
    debugPrint(userApartmentIds.toString());
    try {
      final apartmentIds = userApartmentIds.join('&apartmentIds=');
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/assets?apartmentIds=$apartmentIds',
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      switch (response.statusCode) {
        case 200:
          return (response.data as List<dynamic>)
              .map((e) => IncidentPointDto.fromJson(e))
              .toList();
        case 400:
          throw Exception('Не была передана информация о собственности');
        case 404:
          throw Exception('Одна из собственностей не найдена');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }
}
