import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/repositories/tokens/tokens_repository.dart';
import '../../../../core/services/firebase/firebase_firestore_service.dart';

part 'auth_bloc.freezed.dart';

/// Блок авторизации
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TokensRepository _tokensRepository;

  AuthBloc({
    required AuthState initialState,
    required TokensRepository tokensRepository,
  })  : _tokensRepository = tokensRepository,
        super(initialState) {
    on<AuthEvent>(
      (event, emit) => event.map(
        start: (event) => _start(event, emit),
      ),
    );
  }

  Future<void> _start(_AuthStartEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final accessToken = await _tokensRepository.getAccessToken();
      // TODO: Перенести в отдельный блок
      FirebaseFirestoreService.sendDevicePushNotificationToken();
      emit(accessToken == null || accessToken.isEmpty
          ? const AuthState.unauthenticated()
          : const AuthState.authenticated());
    } on Exception catch (_) {
      rethrow;
    }
  }
}

/// События авторизации
@freezed
abstract class AuthEvent with _$AuthEvent {
  /// Событие начала авторизации
  const factory AuthEvent.start() = _AuthStartEvent;
}

/// Состояния авторизации
@freezed
abstract class AuthState with _$AuthState {
  /// Состояние инициализации
  const factory AuthState.initial() = _AuthInitialState;

  /// Состояние загрузки
  const factory AuthState.loading() = _AuthLoadingState;

  /// Состояние авторизованности пользователя
  const factory AuthState.authenticated() = _AuthAuthenticatedState;

  /// Состояние неавторизованности пользователя
  const factory AuthState.unauthenticated() = _AuthUnauthenticatedState;
}
