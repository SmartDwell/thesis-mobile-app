import '../../../../core/helpers/dio_helper.dart';
import '../contacts/ticket_dto/ticket_dto.dart';
import '../contacts/tokens_dto/tokens_dto.dart';

class AuthRepository {
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
          throw Exception('Передан некорректный логин');
        case 404:
          throw Exception('Пользователь c таким логином не найден');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      throw Exception('Что-то пошло не так');
    }
  }

  Future<TokensDto> verifyCode(String ticketId, String code) async {
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
          return TokensDto.fromJson(response.data);
        case 400:
          throw Exception('Переданы некорректные данные');
        case 404:
          throw Exception('Пользователь c таким логином не найден');
        case 409:
          throw Exception('Передан некорректный секретный код');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      throw Exception('Что-то пошло не так');
    }
  }
}
