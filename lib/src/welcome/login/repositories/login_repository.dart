import '../../contacts/auth_completed_dto/auth_completed_dto.dart';
import '../../contacts/ticket_dto/ticket_dto.dart';

/// Интерфейс репозитория авторизации
abstract class ILoginRepository {
  /// Запросить код для авторизации
  Future<TicketDto> requestCode(String login);

  /// Подтвердить код авторизации
  Future<AuthCompletedDto> verifyCode(String ticketId, String code);
}
