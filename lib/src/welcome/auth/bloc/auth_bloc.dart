import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/repositories/tokens/tokens_repository.dart';

part 'auth_bloc.freezed.dart';

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
    emit(const AuthState.loading());
    final accessToken = await _tokensRepository.getAccessToken();
    emit(accessToken == null || accessToken.isEmpty
        ? const AuthState.unauthenticated()
        : const AuthState.authenticated());
  }
}

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.start() = _AuthStartEvent;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitialState;
  const factory AuthState.loading() = _AuthLoadingState;
  const factory AuthState.authenticated() = _AuthAuthenticatedState;
  const factory AuthState.unauthenticated() = _AuthUnauthenticatedState;
}
