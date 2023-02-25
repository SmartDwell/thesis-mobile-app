import '../../contacts/ticket_dto/ticket_dto.dart';
import '../../contacts/tokens_dto/tokens_dto.dart';

/// Интерфейс репозитория авторизации
abstract class LoginRepository {
  /// Запросить код для авторизации
  Future<TicketDto> requestCode(String login);

  /// Подтвердить код авторизации
  Future<TokensDto> verifyCode(String ticketId, String code);
}
