import '../contracts/request_dto/request_dto.dart';
import '../widgets/request_states.dart';
import 'request_repository.dart';

class MockRequestRepositoryImpl implements RequestRepository {
  @override
  Future<RequestDto> loadRequestById(String id) {
    final request = _storage.firstWhere((element) => element.id == id);
    return Future.value(request);
  }

  @override
  Future<List<RequestDto>> loadRequests() {
    //return Future.value([]);
    return Future.value(_storage);
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
}
