import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/formatted_message.dart';
import '../../../../core/repositories/tokens_repository.dart';
import '../repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthBaseEvent, AuthBaseState> {
  AuthBloc({
    required AuthBaseState initialState,
    required this.tokensRepository,
    required this.authRepository,
  }) : super(initialState);

  final TokensRepository tokensRepository;
  final AuthRepository authRepository;

  @override
  Stream<AuthBaseState> mapEventToState(AuthBaseEvent event) async* {
    debugPrint('AuthBloc: $event');
    if (event is AuthStartedEvent) {
      yield* _mapAuthStartedEventToState();
    } else if (event is AuthSuccessEvent) {
      yield* _mapAuthSuccessEventToState();
    } else if (event is AuthLogOutEvent) {
      yield* _mapAuthLogOutEventToState();
    }

    if (event is AuthRequestCodeEvent) {
      yield* _mapAuthRequestCodeEventToState(event);
    } else if (event is AuthVerifyCodeEvent) {
      yield* _mapAuthVerifyCodeEventToState(event);
    }
  }

  Stream<AuthBaseState> _mapAuthStartedEventToState() async* {
    yield const AuthLoadingState();
    final token = await tokensRepository.getAccessToken();
    if (token != null) {
      yield const AuthAuthenticatedState();
    } else {
      yield const AuthUnauthenticatedState();
    }
  }

  Stream<AuthBaseState> _mapAuthSuccessEventToState() async* {
    yield const AuthAuthenticatedState();
  }

  Stream<AuthBaseState> _mapAuthLogOutEventToState() async* {
    yield const AuthLoadingState();
    await tokensRepository.deleteTokens();
    yield const AuthUnauthenticatedState();
  }

  Stream<AuthBaseState> _mapAuthRequestCodeEventToState(
    AuthRequestCodeEvent event,
  ) async* {
    try {
      final ticketDto = await authRepository.requestCode(event.login);
      yield AuthSuccessLoginVerifyState(
        ticketDto.ticketId,
        ticketDto.name,
      );
    } on Exception catch (e) {
      debugPrint(e.getMessage);
      yield AuthLoginFailureState(e.getMessage);
    }
  }

  Stream<AuthBaseState> _mapAuthVerifyCodeEventToState(
    AuthVerifyCodeEvent event,
  ) async* {
    try {
      final tokensDto = await authRepository.verifyCode(
        event.ticketId,
        event.code,
      );
      await tokensRepository.saveTokens(
        tokensDto.accessToken,
        tokensDto.refreshToken,
      );
      yield const AuthSuccessCodeVerifyState();
    } on Exception catch (e) {
      debugPrint(e.getMessage);
      yield AuthCodeFailureState(e.getMessage);
    }
  }
}
