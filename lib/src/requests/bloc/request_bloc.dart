import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/repositories/ownership/ownership_repository.dart';
import '../contracts/incident_point_dto/incident_point_dto.dart';
import '../contracts/request_dto/request_dto.dart';
import '../repositories/request_repository.dart';

part 'request_bloc.freezed.dart';

/// Блок заявок
class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final IRequestRepository _requestRepository;
  // ignore: unused_field
  final IOwnershipRepository _ownershipRepository;

  RequestBloc({
    required RequestState initialState,
    required IRequestRepository requestRepository,
    required IOwnershipRepository ownershipRepository,
  })  : _requestRepository = requestRepository,
        _ownershipRepository = ownershipRepository,
        super(initialState) {
    on<RequestEvent>(
      (event, emit) => event.map(
        load: (event) => _load(event, emit),
        refresh: (event) => _refresh(event, emit),
        loadSingle: (event) => _loadSingle(event, emit),
        loadSingleById: (event) => null,
        loadAddScreen: (event) => _loadAddScreen(event, emit),
      ),
    );
  }

  Future<void> _load(
    _RequestLoadEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    final requests = await _requestRepository.loadRequests();
    emit(requests.isEmpty
        ? const RequestState.empty()
        : RequestState.loaded(requests: requests));
  }

  Future<void> _refresh(
    _RequestRefreshEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    final requests = await _requestRepository.loadRequests();
    emit(requests.isEmpty
        ? const RequestState.empty()
        : RequestState.loaded(requests: requests));
  }

  Future<void> _loadSingle(
    _RequestLoadSingleEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    emit(RequestState.loadedSingle(request: event.requestDto));
  }

  Future<void> _loadAddScreen(
    _RequestLoadAddScreenEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    // final apartmentIds = await _ownershipRepository.getApartmentIds();
    // if (apartmentIds.isEmpty) {
    //   emit(const RequestState.error(
    //     message:
    //         'Вы не можете создать заявку, потому что у вас нет собственности. Обратитесь к администратору.',
    //   ));
    //   return;
    // }
    // final points = await _requestRepository.loadIncidentPointsByUserAparmentIds(
    //   apartmentIds,
    // );
    const points = [
      IncidentPointDto(
        id: '31cc18f1-4712-40b3-80fe-9b5955c6fb90',
        name: 'ЖК Атмосфера',
        children: [],
      ),
      IncidentPointDto(
        id: '32cc18f1-4712-40b3-80fe-9b5955c6fb90',
        name: 'ЖК Прогресс',
        children: [],
      ),
    ];
    emit(const RequestState.loadedAddScreen(
      points: points,
    ));
  }
}

/// Базовое событие заявок
@freezed
abstract class RequestEvent with _$RequestEvent {
  /// Загрузить все заявки
  const factory RequestEvent.load() = _RequestLoadEvent;

  /// Обновить экран
  const factory RequestEvent.refresh() = _RequestRefreshEvent;

  /// Загрузить и отобразить одну заявку
  const factory RequestEvent.loadSingle({
    required RequestDto requestDto,
  }) = _RequestLoadSingleEvent;

  /// Загрузить и отобразить заявку по идентификатору
  const factory RequestEvent.loadSingleById({
    required String requestId,
  }) = _RequestLoadSingleByIdEvent;

  /// Загрузить экран добавления заявки
  const factory RequestEvent.loadAddScreen() = _RequestLoadAddScreenEvent;
}

/// Базовое состояние заявок
@freezed
abstract class RequestState with _$RequestState {
  /// Состояние инициализации
  const factory RequestState.initial() = _RequestInitialState;

  /// Состояние загрузки
  const factory RequestState.loading() = _RequestLoadingState;

  /// Состояние успешной загрузки заявок
  const factory RequestState.loaded({
    required List<RequestDto> requests,
  }) = _RequestLoadedState;

  /// Состояние успешной загрузки заявки
  const factory RequestState.loadedSingle({
    required RequestDto request,
  }) = _RequestLoadedSingleState;

  /// Состояние успешной загрузки экрана добавления заявки
  const factory RequestState.loadedAddScreen({
    required List<IncidentPointDto> points,
  }) = _RequestLoadedAddScreenState;

  /// Состояние отсутствия заявок
  const factory RequestState.empty() = _RequestEmptyState;

  /// Состояние ошибки
  const factory RequestState.error({
    required String message,
  }) = _RequestErrorState;
}
