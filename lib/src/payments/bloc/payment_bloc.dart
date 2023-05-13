import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../contracts/payment_dto/payment_dto.dart';
import '../repositories/payment_repository.dart';

part 'payment_bloc.freezed.dart';

/// Блок платежей
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final IPaymentRepository _paymentRepository;

  PaymentBloc({
    required PaymentState initialState,
    required IPaymentRepository paymentRepository,
  })  : _paymentRepository = paymentRepository,
        super(initialState) {
    on<PaymentEvent>(
      (event, emit) => event.map(
        load: (event) => _load(event, emit),
        refresh: (event) => _refresh(event, emit),
        loadSingle: (event) => _loadSingle(event, emit),
      ),
    );
  }

  Future<void> _load(
    _PaymentLoadEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(const PaymentState.loading());
    await Future.delayed(const Duration(seconds: 1));
    final payments = await _paymentRepository.loadPayments();
    emit(PaymentState.loaded(payments: payments));
  }

  Future<void> _refresh(
    _PaymentRefreshEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(const PaymentState.loading());
    final payments = await _paymentRepository.loadPayments();
    emit(PaymentState.loaded(payments: payments));
  }

  Future<void> _loadSingle(
    _PaymentLoadSingleEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(const PaymentState.loading());
    emit(PaymentState.loadedSingle(payment: event.paymentDto));
  }
}

/// Базовое событие платежей
@freezed
abstract class PaymentEvent with _$PaymentEvent {
  /// Загрузить все платежи
  const factory PaymentEvent.load() = _PaymentLoadEvent;

  /// Обновить экран
  const factory PaymentEvent.refresh() = _PaymentRefreshEvent;

  /// Загрузить и отобразить один платеж
  const factory PaymentEvent.loadSingle({
    required PaymentDto paymentDto,
  }) = _PaymentLoadSingleEvent;
}

/// Базовое состояние платежей
@freezed
abstract class PaymentState with _$PaymentState {
  /// Состояние инициализации
  const factory PaymentState.initial() = _PaymentInitialState;

  /// Состояние загрузки
  const factory PaymentState.loading() = _PaymentLoadingState;

  /// Состояние успешной загрузки платежей
  const factory PaymentState.loaded({
    required List<PaymentDto> payments,
  }) = _PaymentLoadedState;

  /// Состояние успешной загрузки платежа
  const factory PaymentState.loadedSingle({
    required PaymentDto payment,
  }) = _PaymentLoadedSingleState;

  /// Состояние отсутствия платежей
  const factory PaymentState.empty() = _PaymentEmptyState;

  /// Состояние ошибки
  const factory PaymentState.error() = _PaymentErrorState;
}
