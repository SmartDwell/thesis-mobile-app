import '../contracts/add_comment_dto/add_comment_dto.dart';
import '../contracts/add_request_dto/add_request_dto.dart';
import '../contracts/request_cancel_dto/request_cancel_dto.dart';
import '../contracts/request_comment_dto/request_comment_dto.dart';
import '../contracts/request_dto/request_dto.dart';
import '../contracts/request_edit_dto/request_edit_dto.dart';
import '../contracts/request_status_dto/request_status_dto.dart';

abstract class IRequestRepository {
  Future<List<RequestDto>> loadRequests();
  Future<List<RequestCommentDto>> loadRequestComments(String id);
  Future<bool> addCommentToRequest(
      String requestId, AddCommentDto addCommentDto);
  Future<bool> addRequest(AddRequestDto addRequestDto);
  Future<bool> cancelRequest(
      String requestId, RequestCancelDto requestCancelDto);
  Future<bool> editRequest(String requestId, RequestEditDto requestEditDto);
  Future<List<RequestStatusDto>> loadRequestStatuses(String id);
}
