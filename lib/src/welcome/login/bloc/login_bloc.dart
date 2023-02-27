import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/extension/formatted_message.dart';
import '../../../../core/repositories/tokens/tokens_repository.dart';
import '../repositories/login_repository.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final TokensRepository _tokensRepository;
  final LoginRepository _loginRepository;

  LoginBloc({
    required LoginState initialState,
    required TokensRepository tokensRepository,
    required LoginRepository loginRepository,
  })  : _tokensRepository = tokensRepository,
        _loginRepository = loginRepository,
        super(initialState) {
    on<LoginEvent>(
      (event, emit) => event.map(
        requestCode: (event) => _requestCode(event, emit),
        verifyCode: (event) => _verifyCode(event, emit),
      ),
    );
  }

  Future<void> _requestCode(
    _LoginRequestCodeEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      final ticketDto = await _loginRepository.requestCode(event.login);
      emit(LoginState.successRequestCode(
        tickedId: ticketDto.ticketId,
        username: ticketDto.name,
      ));
    } on Exception catch (e) {
      emit(LoginState.failureRequestCode(message: e.getMessage));
      rethrow;
    }
  }

  Future<void> _verifyCode(
    _LoginVerifyCodeEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      final tokensDto = await _loginRepository.verifyCode(
        event.tickedId,
        event.code,
      );
      await _tokensRepository.saveTokens(
        tokensDto.accessToken,
        tokensDto.refreshToken,
      );
      emit(const LoginState.successVerifyCode());
    } on Exception catch (e) {
      emit(LoginState.failureVerifyCode(message: e.getMessage));
      rethrow;
    }
  }
}

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.requestCode({
    required String login,
  }) = _LoginRequestCodeEvent;

  const factory LoginEvent.verifyCode({
    required String tickedId,
    required String code,
  }) = _LoginVerifyCodeEvent;
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.loading() = _LoginLoadingState;

  const factory LoginState.successRequestCode({
    required String tickedId,
    required String username,
  }) = _LoginSuccessRequestCodeState;

  const factory LoginState.successVerifyCode() = _LoginSuccessVerifyCodeState;

  const factory LoginState.failureRequestCode({
    required String message,
  }) = _LoginFailureRequestCodeState;

  const factory LoginState.failureVerifyCode({
    required String message,
  }) = _LoginFailureVerifyCodeState;
}
