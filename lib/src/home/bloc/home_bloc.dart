import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../payments/contracts/payment_dto/payment_dto.dart';
import '../../payments/repositories/payment_repository.dart';
import '../contracts/news_dto/news_dto.dart';
import '../repositories/news_repository.dart';

part 'home_bloc.freezed.dart';

/// Блок новостей
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IPaymentRepository _paymentRepository;
  final INewsRepository _newsRepository;

  HomeBloc({
    required HomeState initialState,
    required IPaymentRepository paymentRepository,
    required INewsRepository newsRepository,
  })  : _paymentRepository = paymentRepository,
        _newsRepository = newsRepository,
        super(initialState) {
    on<HomeEvent>(
      (event, emit) => event.map(
        load: (event) => _load(event, emit),
        refresh: (event) => _refresh(event, emit),
        loadSingleNews: (event) => _loadSingleNews(event, emit),
        loadSinglePayment: (event) => _loadSinglePayment(event, emit),
      ),
    );
  }

  Future<void> _load(
    _HomeLoadEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    final news = await _newsRepository.loadNews();
    final payments = await _paymentRepository.loadPayments();
    emit(news.isEmpty && payments.isEmpty
        ? const HomeState.empty()
        : HomeState.loaded(news: news, payments: payments));
  }

  Future<void> _refresh(
    _HomeRefreshEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    final news = await _newsRepository.loadNews();
    final payments = await _paymentRepository.loadPayments();
    emit(news.isEmpty && payments.isEmpty
        ? const HomeState.empty()
        : HomeState.loaded(news: news, payments: payments));
  }

  Future<void> _loadSingleNews(
    _HomeLoadSingleNewsEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    emit(HomeState.loadedSingleNews(newsDto: event.newsDto));
  }

  Future<void> _loadSinglePayment(
    _HomeLoadSinglePaymentEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    emit(HomeState.loadedSinglePayment(paymentDto: event.paymentDto));
  }
}

/// Базовое событие
@freezed
abstract class HomeEvent with _$HomeEvent {
  /// Загрузить все новости
  const factory HomeEvent.load() = _HomeLoadEvent;

  /// Обновить экран
  const factory HomeEvent.refresh() = _HomeRefreshEvent;

  /// Загрузить и отобразить одну новость
  const factory HomeEvent.loadSingleNews({
    required NewsDto newsDto,
  }) = _HomeLoadSingleNewsEvent;

  /// Загрузить и отобразить один платеж
  const factory HomeEvent.loadSinglePayment({
    required PaymentDto paymentDto,
  }) = _HomeLoadSinglePaymentEvent;
}

/// Базовое состояние
@freezed
abstract class HomeState with _$HomeState {
  /// Состояние инициализации
  const factory HomeState.initial() = _HomeInitialState;

  /// Состояние загрузки
  const factory HomeState.loading() = _HomeLoadingState;

  /// Состояние успешной загрузки новостей
  const factory HomeState.loaded({
    required List<NewsDto> news,
    required List<PaymentDto> payments,
  }) = _HomeLoadedState;

  /// Состояние успешной загрузки новости
  const factory HomeState.loadedSingleNews({
    required NewsDto newsDto,
  }) = _HomeLoadedSingleNewsState;

  /// Состояние успешной загрузки платежа
  const factory HomeState.loadedSinglePayment({
    required PaymentDto paymentDto,
  }) = _HomeLoadedSinglePaymentState;

  /// Состояние отсутствия новостей
  const factory HomeState.empty() = _HomeEmptyState;

  /// Состояние ошибки
  const factory HomeState.error() = _HomeErrorState;
}
