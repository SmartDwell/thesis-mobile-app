import '../contracts/add_comment_dto/add_comment_dto.dart';
import '../contracts/request_comment_dto/request_comment_dto.dart';
import '../contracts/request_dto/request_dto.dart';

abstract class IRequestRepository {
  Future<List<RequestDto>> loadRequests();
  Future<List<RequestCommentDto>> loadRequestComments(String id);
  Future<bool> addCommentToRequest(AddCommentDto addCommentDto);
}
