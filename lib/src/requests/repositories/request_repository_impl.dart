import 'package:flutter/material.dart';

import '../../../core/helpers/dio_helper.dart';
import '../../../core/repositories/tokens/tokens_repository_impl.dart';
import '../contracts/add_comment_dto/add_comment_dto.dart';
import '../contracts/add_request_dto/add_request_dto.dart';
import '../contracts/request_comment_dto/request_comment_dto.dart';
import '../contracts/request_dto/request_dto.dart';
import '../contracts/request_status_dto/request_status_dto.dart';
import 'request_repository.dart';

class RequestRepositoryImpl implements IRequestRepository {
  final _tokensRepository = TokensRepositoryImpl();

  @override
  Future<List<RequestDto>> loadRequests() async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      debugPrint(accessToken);
      final response = await DioHelper.getData(
        url: '/requests/ffd61783-3fb2-431a-b824-3f2afbef0a82',
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
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<RequestCommentDto>> loadRequestComments(String id) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/requests/$id/comments',
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
        case 200:
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
  Future<List<RequestStatusDto>> loadRequestStatuses(String id) async {
    try {
      final accessToken = await _tokensRepository.getAccessToken();
      final response = await DioHelper.getData(
        url: '/requests/$id/statuses',
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
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }
}
