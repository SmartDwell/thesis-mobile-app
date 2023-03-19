import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../contracts/request_dto/request_dto.dart';
import '../repositories/request_repository.dart';

part 'request_bloc.freezed.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final IRequestRepository _requestRepository;

  RequestBloc({
    required RequestState initialState,
    required IRequestRepository requestRepository,
  })  : _requestRepository = requestRepository,
        super(initialState) {
    on<RequestEvent>(
      (event, emit) => event.map(
        load: (event) => _load(event, emit),
        refresh: (event) => _refresh(event, emit),
        loadSingle: (event) => _loadSingle(event, emit),
      ),
    );
  }

  Future<void> _load(
    _RequestLoadEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    await Future.delayed(const Duration(seconds: 1));
    final requests = await _requestRepository.loadRequests();
    emit(RequestState.loaded(requests: requests));
  }

  Future<void> _refresh(
    _RequestRefreshEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    final requests = await _requestRepository.loadRequests();
    emit(RequestState.loaded(requests: requests));
  }

  Future<void> _loadSingle(
    _RequestLoadSingleEvent event,
    Emitter<RequestState> emit,
  ) async {
    emit(const RequestState.loading());
    final request = await _requestRepository.loadRequestById(event.requestId);
    emit(RequestState.loadedSingle(request: request));
  }
}

@freezed
abstract class RequestEvent with _$RequestEvent {
  const factory RequestEvent.load() = _RequestLoadEvent;
  const factory RequestEvent.refresh() = _RequestRefreshEvent;
  const factory RequestEvent.loadSingle({
    required String requestId,
  }) = _RequestLoadSingleEvent;
}

@freezed
abstract class RequestState with _$RequestState {
  const factory RequestState.initial() = _RequestInitialState;

  const factory RequestState.loading() = _RequestLoadingState;

  const factory RequestState.loaded({
    required List<RequestDto> requests,
  }) = _RequestLoadedState;

  const factory RequestState.loadedSingle({
    required RequestDto request,
  }) = _RequestLoadedSingleState;

  const factory RequestState.empty() = _RequestEmptyState;

  const factory RequestState.error() = _RequestErrorState;
}
