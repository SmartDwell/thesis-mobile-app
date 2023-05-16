import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../contracts/door_dto/door_dto.dart';
import '../repositories/door_repository.dart';

part 'access_bloc.freezed.dart';

/// Блок доступа
class AccessBloc extends Bloc<AccessEvent, AccessState> {
  final IDoorRepository _doorRepository;

  AccessBloc({
    required AccessState initialState,
    required IDoorRepository doorRepository,
  })  : _doorRepository = doorRepository,
        super(initialState) {
    on<AccessEvent>(
      (event, emit) => event.map(
        load: (event) => _load(event, emit),
        refresh: (event) => _refresh(event, emit),
        open: (event) => _open(event, emit),
      ),
    );
  }

  Future<void> _load(
    _AccessLoadEvent event,
    Emitter<AccessState> emit,
  ) async {
    emit(const AccessState.loading());
    final doors = await _doorRepository.loadDoors();
    emit(AccessState.loaded(doors: doors));
  }

  Future<void> _refresh(
    _AccessRefreshEvent event,
    Emitter<AccessState> emit,
  ) async {
    emit(const AccessState.loading());
    final doors = await _doorRepository.loadDoors();
    emit(AccessState.loaded(doors: doors));
  }

  Future<void> _open(
    _AccessOpenEvent event,
    Emitter<AccessState> emit,
  ) async {
    emit(const AccessState.loading());
    final opened = await _doorRepository.openDoor(event.doorId);
    emit(opened
        ? const AccessState.successOpened()
        : const AccessState.failureOpened());
    final doors = await _doorRepository.loadDoors();
    emit(AccessState.loaded(doors: doors));
  }
}

/// Базовое событие доступа
@freezed
abstract class AccessEvent with _$AccessEvent {
  /// Загрузить все двери
  const factory AccessEvent.load() = _AccessLoadEvent;

  /// Обновить экран
  const factory AccessEvent.refresh() = _AccessRefreshEvent;

  /// Открыть дверь
  const factory AccessEvent.open({
    required String doorId,
  }) = _AccessOpenEvent;
}

/// Базовое состояние доступа
@freezed
abstract class AccessState with _$AccessState {
  /// Состояние инициализации
  const factory AccessState.initial() = _AccessInitialState;

  /// Состояние загрузки
  const factory AccessState.loading() = _AccessLoadingState;

  /// Состояние успешной загрузки дверей
  const factory AccessState.loaded({
    required List<DoorDto> doors,
  }) = _AccessLoadedState;

  /// Состояние успешного открытия двери
  const factory AccessState.successOpened() = _AccessSuccessOpenedState;

  /// Состояние неудачного открытия двери
  const factory AccessState.failureOpened() = _AccessFailureOpenedState;

  /// Состояние отсутствия платежей
  const factory AccessState.empty() = _AccessEmptyState;

  /// Состояние ошибки
  const factory AccessState.error() = _AccessErrorState;
}
