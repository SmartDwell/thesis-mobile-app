import '../contracts/add_comment_dto/add_comment_dto.dart';
import '../contracts/add_request_dto/add_request_dto.dart';
import '../contracts/request_cancel_dto/request_cancel_dto.dart';
import '../contracts/request_comment_dto/request_comment_dto.dart';
import '../contracts/request_dto/request_dto.dart';
import '../contracts/request_edit_dto/request_edit_dto.dart';
import '../contracts/request_status_dto/request_status_dto.dart';

/// Интерфейс репозитория заявок
abstract class IRequestRepository {
  /// Загрузить все заявки
  Future<List<RequestDto>> loadRequests();

  /// Загрузить комментарии заявки
  Future<List<RequestCommentDto>> loadRequestComments(String requestId);

  /// Добавить комментарий к заявке
  Future<bool> addCommentToRequest(
      String requestId, AddCommentDto addCommentDto);

  /// Добавить заявку
  Future<bool> addRequest(AddRequestDto addRequestDto);

  /// Отменить заявку
  Future<bool> cancelRequest(
      String requestId, RequestCancelDto requestCancelDto);

  /// Редатировать заявку
  Future<bool> editRequest(String requestId, RequestEditDto requestEditDto);

  /// Загрузить статусы заявки
  Future<List<RequestStatusDto>> loadRequestStatuses(String requestId);
}
