import '../contracts/request_dto/request_dto.dart';

abstract class RequestRepository {
  Future<List<RequestDto>> loadRequests();
  Future<RequestDto> loadRequestById(String id);
}
