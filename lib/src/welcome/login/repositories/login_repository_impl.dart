import 'package:flutter/material.dart';

import '../../../../core/helpers/dio_helper.dart';
import '../../contacts/auth_completed_dto/auth_completed_dto.dart';
import '../../contacts/ticket_dto/ticket_dto.dart';
import 'login_repository.dart';

/// Репозиторий авторизации
class LoginRepositoryImpl implements ILoginRepository {
  @override
  Future<TicketDto> requestCode(String login) async {
    try {
      final data = {
        'login': login,
      };

      final response = await DioHelper.postData(
        url: '/auth/start',
        data: data,
        useAuthErrorInterceptor: false,
      );

      switch (response.statusCode) {
        case 200:
          return TicketDto.fromJson(response.data);
        case 400:
          throw Exception('Передана некорректная почта или номер телефона');
        case 404:
          throw Exception(
              'Пользователь с данной почтой или номером телефона не найден');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthCompletedDto> verifyCode(String ticketId, String code) async {
    try {
      final data = {
        'ticketId': ticketId,
        'code': code,
      };

      final response = await DioHelper.postData(
        url: '/auth/complete',
        data: data,
        useAuthErrorInterceptor: false,
      );

      switch (response.statusCode) {
        case 200:
          return AuthCompletedDto.fromJson(response.data);
        case 400:
          throw Exception('Переданы некорректные данные!');
        case 404:
          throw Exception('Время действия смс-кода истекло!');
        case 409:
          throw Exception('Передан неверный смс-код!');
        default:
          throw Exception('Что-то пошло не так...');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthCompletedDto> guestLogin() async {
    try {
      final response = await DioHelper.postData(
        url: '/auth/guest-login',
        useAuthErrorInterceptor: false,
      );

      debugPrint(response.data.toString());

      switch (response.statusCode) {
        case 200:
          return AuthCompletedDto.fromJson(response.data);
        case 400:
          throw Exception('Переданы некорректные данные!');
        case 404:
          throw Exception('Время действия смс-кода истекло!');
        case 409:
          throw Exception('Передан неверный смс-код!');
        default:
          throw Exception('Что-то пошло не так...');
      }
    } catch (e) {
      rethrow;
    }
  }
}
