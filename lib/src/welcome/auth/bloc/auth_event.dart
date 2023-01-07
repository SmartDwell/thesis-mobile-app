import 'package:equatable/equatable.dart';

abstract class AuthBaseEvent extends Equatable {
  const AuthBaseEvent();

  @override
  List<Object> get props => [];
}

class AuthStartedEvent extends AuthBaseEvent {
  const AuthStartedEvent();
}

class AuthRequestCodeEvent extends AuthBaseEvent {
  final String login;

  const AuthRequestCodeEvent(this.login);

  @override
  List<Object> get props => [login];
}

class AuthVerifyCodeEvent extends AuthBaseEvent {
  final String ticketId;
  final String code;

  const AuthVerifyCodeEvent(this.ticketId, this.code);

  @override
  List<Object> get props => [ticketId, code];
}

class AuthSuccessEvent extends AuthBaseEvent {
  const AuthSuccessEvent();
}

class AuthLogOutEvent extends AuthBaseEvent {
  const AuthLogOutEvent();
}
