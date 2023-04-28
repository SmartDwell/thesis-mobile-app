import '../contracts/add_comment_dto/add_comment_dto.dart';
import '../contracts/request_comment_dto/request_comment_dto.dart';
import '../contracts/request_dto/request_dto.dart';
import '../contracts/request_status_dto/request_status_dto.dart';
import '../widgets/request_states.dart';
import 'request_repository.dart';

class MockRequestRepositoryImpl implements IRequestRepository {
  @override
  Future<List<RequestDto>> loadRequests() {
    final data = _storage + _storage;
    return Future.value(data);
  }

  @override
  Future<List<RequestCommentDto>> loadRequestComments(String id) {
    return Future.value([]);
  }

  final _storage = [
    RequestDto(
      id: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      number: 3,
      title: "Разбито два окна",
      description: "Снова разбито окно, теперь аж два, очень надоело.",
      images: ["3fa85f64-5717-4562-b3fc-2c963f66afa6"],
      created: DateTime.now(),
      incidentPointList: ["3fa85f64-5717-4562-b3fc-2c963f66afa6"],
      incidentPointListAsString: "ЖК Чистые пруды \ д. 6, кор. 8 \ под. 1",
      currentState: RequestStates.New,
    ),
    RequestDto(
      id: "3fa85f64-5717-4562-b3fc-2c963f66afa7",
      number: 2,
      title: "Неисправность лифта",
      description:
          "Не работает кнопка вызова малого лифта, приходится дожидаться кого-нибудь, чтобы подняться до дома.",
      images: ["3fa85f64-5717-4562-b3fc-2c963f66afa6"],
      created: DateTime.now().add(const Duration(days: -2)),
      incidentPointList: ["3fa85f64-5717-4562-b3fc-2c963f66afa6"],
      incidentPointListAsString: "ЖК Чистые пруды \ д. 6, кор. 8 \ под. 1",
      currentState: RequestStates.InProgress,
    ),
    RequestDto(
      id: "3fa85f64-5717-4562-b3fc-2c963f66afa8",
      number: 1,
      title: "Сломан инвентарь",
      description: "Сломана карусель, почините, пожалуйста",
      images: ["3fa85f64-5717-4562-b3fc-2c963f66afa6"],
      created: DateTime.now().add(const Duration(days: -5)),
      incidentPointList: ["3fa85f64-5717-4562-b3fc-2c963f66afa6"],
      incidentPointListAsString: "ЖК Чистые пруды \ Детская площадка",
      currentState: RequestStates.Completed,
    ),
  ];

  @override
  Future<bool> addCommentToRequest(AddCommentDto addCommentDto) {
    // TODO: implement addCommentToRequest
    throw UnimplementedError();
  }

  @override
  Future<List<RequestStatusDto>> loadRequestStatuses(String id) {
    // TODO: implement loadRequestStatuses
    throw UnimplementedError();
  }
}
