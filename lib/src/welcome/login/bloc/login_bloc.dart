import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/extension/formatted_message.dart';
import '../../../../core/repositories/tokens/tokens_repository.dart';
import '../../../../shared/repositories/ownership/ownership_repository.dart';
import '../../../../shared/repositories/user/user_repository.dart';
import '../../contacts/auth_completed_dto/auth_completed_dto.dart';
import '../repositories/login_repository.dart';

part 'login_bloc.freezed.dart';

/// Блок логина
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final TokensRepository _tokensRepository;
  final ILoginRepository _loginRepository;
  final IUserRepository _userRepository;
  final IOwnershipRepository _ownershipRepository;

  LoginBloc({
    required LoginState initialState,
    required TokensRepository tokensRepository,
    required ILoginRepository loginRepository,
    required IUserRepository userRepository,
    required IOwnershipRepository ownershipRepository,
  })  : _tokensRepository = tokensRepository,
        _loginRepository = loginRepository,
        _userRepository = userRepository,
        _ownershipRepository = ownershipRepository,
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
      const guestLoginMatch = 'guest@example.com, 79887893311';
      if (guestLoginMatch.contains(event.login)) {
        final authCompletedDto = await _loginRepository.guestLogin();
        await _saveUserInfo(authCompletedDto);
        emit(const LoginState.successVerifyCode());
      }
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
      final authCompletedDto = await _loginRepository.verifyCode(
        event.tickedId,
        event.code,
      );
      await _saveUserInfo(authCompletedDto);
      emit(const LoginState.successVerifyCode());
    } on Exception catch (e) {
      emit(LoginState.failureVerifyCode(message: e.getMessage));
      rethrow;
    }
  }

  Future<void> _saveUserInfo(AuthCompletedDto authCompletedDto) async {
    await _tokensRepository.saveTokens(
      authCompletedDto.tokens.accessToken,
      authCompletedDto.tokens.refreshToken,
    );
    if (!await _userRepository.saveUserIntoCache(authCompletedDto.user)) {
      throw Exception('Не удалось сохранить информацию о пользователе');
    }
    if (!await _ownershipRepository.loadOwnershipFromServer()) {
      throw Exception('Не удалось загрузить информацию о владении');
    }
  }
}

/// События логина
@freezed
abstract class LoginEvent with _$LoginEvent {
  /// Событие запроса кода
  const factory LoginEvent.requestCode({
    required String login,
  }) = _LoginRequestCodeEvent;

  /// Событие верификации кода
  const factory LoginEvent.verifyCode({
    required String tickedId,
    required String code,
  }) = _LoginVerifyCodeEvent;
}

/// Состояния логина
@freezed
abstract class LoginState with _$LoginState {
  /// Состояние загрузки
  const factory LoginState.loading() = _LoginLoadingState;

  /// Состояние удачного запроса кода
  const factory LoginState.successRequestCode({
    required String tickedId,
    required String username,
  }) = _LoginSuccessRequestCodeState;

  /// Состояние удачной верификации кода
  const factory LoginState.successVerifyCode() = _LoginSuccessVerifyCodeState;

  /// Состояние удачного запроса кода
  const factory LoginState.failureRequestCode({
    required String message,
  }) = _LoginFailureRequestCodeState;

  /// Состояние неудачной верификации кода
  const factory LoginState.failureVerifyCode({
    required String message,
  }) = _LoginFailureVerifyCodeState;
}
