import 'package:equatable/equatable.dart';

abstract class AuthBaseState extends Equatable {
  const AuthBaseState();

  @override
  List<Object> get props => [];
}

class AuthInitialState extends AuthBaseState {
  const AuthInitialState();
}

class AuthAuthenticatedState extends AuthBaseState {
  const AuthAuthenticatedState();
}

class AuthUnauthenticatedState extends AuthBaseState {
  const AuthUnauthenticatedState();
}

class AuthLoadingState extends AuthBaseState {
  const AuthLoadingState();
}

class AuthSuccessLoginVerifyState extends AuthBaseState {
  final String ticketId;
  final String username;

  const AuthSuccessLoginVerifyState(this.ticketId, this.username);

  @override
  List<Object> get props => [ticketId, username];
}

class AuthSuccessCodeVerifyState extends AuthBaseState {
  const AuthSuccessCodeVerifyState();
}

abstract class AuthFailureState extends AuthBaseState {
  final String message;

  const AuthFailureState(this.message);

  @override
  List<Object> get props => [message];
}

class AuthLoginFailureState extends AuthFailureState {
  const AuthLoginFailureState(String message) : super(message);
}

class AuthCodeFailureState extends AuthFailureState {
  const AuthCodeFailureState(String message) : super(message);
}
