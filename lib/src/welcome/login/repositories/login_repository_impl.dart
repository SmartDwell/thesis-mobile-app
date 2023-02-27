import '../../../../core/helpers/dio_helper.dart';
import '../../contacts/tokens_dto/tokens_dto.dart';
import '../../contacts/ticket_dto/ticket_dto.dart';
import 'login_repository.dart';

/// Репозиторий авторизации
class LoginRepositoryImpl implements LoginRepository {
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
          throw Exception('Время действия смс-кода истекло');
        case 409:
          throw Exception('Передан некорректный смс-код');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }
}
