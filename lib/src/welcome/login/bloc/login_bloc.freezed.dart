// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) requestCode,
    required TResult Function(String tickedId, String code) verifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login)? requestCode,
    TResult? Function(String tickedId, String code)? verifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? requestCode,
    TResult Function(String tickedId, String code)? verifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestCodeEvent value) requestCode,
    required TResult Function(_LoginVerifyCodeEvent value) verifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestCodeEvent value)? requestCode,
    TResult? Function(_LoginVerifyCodeEvent value)? verifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestCodeEvent value)? requestCode,
    TResult Function(_LoginVerifyCodeEvent value)? verifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginRequestCodeEventCopyWith<$Res> {
  factory _$$_LoginRequestCodeEventCopyWith(_$_LoginRequestCodeEvent value,
          $Res Function(_$_LoginRequestCodeEvent) then) =
      __$$_LoginRequestCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$_LoginRequestCodeEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginRequestCodeEvent>
    implements _$$_LoginRequestCodeEventCopyWith<$Res> {
  __$$_LoginRequestCodeEventCopyWithImpl(_$_LoginRequestCodeEvent _value,
      $Res Function(_$_LoginRequestCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$_LoginRequestCodeEvent(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginRequestCodeEvent implements _LoginRequestCodeEvent {
  const _$_LoginRequestCodeEvent({required this.login});

  @override
  final String login;

  @override
  String toString() {
    return 'LoginEvent.requestCode(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestCodeEvent &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestCodeEventCopyWith<_$_LoginRequestCodeEvent> get copyWith =>
      __$$_LoginRequestCodeEventCopyWithImpl<_$_LoginRequestCodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) requestCode,
    required TResult Function(String tickedId, String code) verifyCode,
  }) {
    return requestCode(login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login)? requestCode,
    TResult? Function(String tickedId, String code)? verifyCode,
  }) {
    return requestCode?.call(login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? requestCode,
    TResult Function(String tickedId, String code)? verifyCode,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestCodeEvent value) requestCode,
    required TResult Function(_LoginVerifyCodeEvent value) verifyCode,
  }) {
    return requestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestCodeEvent value)? requestCode,
    TResult? Function(_LoginVerifyCodeEvent value)? verifyCode,
  }) {
    return requestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestCodeEvent value)? requestCode,
    TResult Function(_LoginVerifyCodeEvent value)? verifyCode,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(this);
    }
    return orElse();
  }
}

abstract class _LoginRequestCodeEvent implements LoginEvent {
  const factory _LoginRequestCodeEvent({required final String login}) =
      _$_LoginRequestCodeEvent;

  String get login;
  @JsonKey(ignore: true)
  _$$_LoginRequestCodeEventCopyWith<_$_LoginRequestCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginVerifyCodeEventCopyWith<$Res> {
  factory _$$_LoginVerifyCodeEventCopyWith(_$_LoginVerifyCodeEvent value,
          $Res Function(_$_LoginVerifyCodeEvent) then) =
      __$$_LoginVerifyCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String tickedId, String code});
}

/// @nodoc
class __$$_LoginVerifyCodeEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginVerifyCodeEvent>
    implements _$$_LoginVerifyCodeEventCopyWith<$Res> {
  __$$_LoginVerifyCodeEventCopyWithImpl(_$_LoginVerifyCodeEvent _value,
      $Res Function(_$_LoginVerifyCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickedId = null,
    Object? code = null,
  }) {
    return _then(_$_LoginVerifyCodeEvent(
      tickedId: null == tickedId
          ? _value.tickedId
          : tickedId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginVerifyCodeEvent implements _LoginVerifyCodeEvent {
  const _$_LoginVerifyCodeEvent({required this.tickedId, required this.code});

  @override
  final String tickedId;
  @override
  final String code;

  @override
  String toString() {
    return 'LoginEvent.verifyCode(tickedId: $tickedId, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginVerifyCodeEvent &&
            (identical(other.tickedId, tickedId) ||
                other.tickedId == tickedId) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tickedId, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginVerifyCodeEventCopyWith<_$_LoginVerifyCodeEvent> get copyWith =>
      __$$_LoginVerifyCodeEventCopyWithImpl<_$_LoginVerifyCodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) requestCode,
    required TResult Function(String tickedId, String code) verifyCode,
  }) {
    return verifyCode(tickedId, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login)? requestCode,
    TResult? Function(String tickedId, String code)? verifyCode,
  }) {
    return verifyCode?.call(tickedId, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? requestCode,
    TResult Function(String tickedId, String code)? verifyCode,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(tickedId, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestCodeEvent value) requestCode,
    required TResult Function(_LoginVerifyCodeEvent value) verifyCode,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestCodeEvent value)? requestCode,
    TResult? Function(_LoginVerifyCodeEvent value)? verifyCode,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestCodeEvent value)? requestCode,
    TResult Function(_LoginVerifyCodeEvent value)? verifyCode,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _LoginVerifyCodeEvent implements LoginEvent {
  const factory _LoginVerifyCodeEvent(
      {required final String tickedId,
      required final String code}) = _$_LoginVerifyCodeEvent;

  String get tickedId;
  String get code;
  @JsonKey(ignore: true)
  _$$_LoginVerifyCodeEventCopyWith<_$_LoginVerifyCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String tickedId, String username)
        successRequestCode,
    required TResult Function() successVerifyCode,
    required TResult Function(String message) failureRequestCode,
    required TResult Function(String message) failureVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String tickedId, String username)? successRequestCode,
    TResult? Function()? successVerifyCode,
    TResult? Function(String message)? failureRequestCode,
    TResult? Function(String message)? failureVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String tickedId, String username)? successRequestCode,
    TResult Function()? successVerifyCode,
    TResult Function(String message)? failureRequestCode,
    TResult Function(String message)? failureVerifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessRequestCodeState value)
        successRequestCode,
    required TResult Function(_LoginSuccessVerifyCodeState value)
        successVerifyCode,
    required TResult Function(_LoginFailureRequestCodeState value)
        failureRequestCode,
    required TResult Function(_LoginFailureVerifyCodeState value)
        failureVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult? Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult? Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult? Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginLoadingStateCopyWith<$Res> {
  factory _$$_LoginLoadingStateCopyWith(_$_LoginLoadingState value,
          $Res Function(_$_LoginLoadingState) then) =
      __$$_LoginLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginLoadingStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginLoadingState>
    implements _$$_LoginLoadingStateCopyWith<$Res> {
  __$$_LoginLoadingStateCopyWithImpl(
      _$_LoginLoadingState _value, $Res Function(_$_LoginLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginLoadingState implements _LoginLoadingState {
  const _$_LoginLoadingState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String tickedId, String username)
        successRequestCode,
    required TResult Function() successVerifyCode,
    required TResult Function(String message) failureRequestCode,
    required TResult Function(String message) failureVerifyCode,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String tickedId, String username)? successRequestCode,
    TResult? Function()? successVerifyCode,
    TResult? Function(String message)? failureRequestCode,
    TResult? Function(String message)? failureVerifyCode,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String tickedId, String username)? successRequestCode,
    TResult Function()? successVerifyCode,
    TResult Function(String message)? failureRequestCode,
    TResult Function(String message)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessRequestCodeState value)
        successRequestCode,
    required TResult Function(_LoginSuccessVerifyCodeState value)
        successVerifyCode,
    required TResult Function(_LoginFailureRequestCodeState value)
        failureRequestCode,
    required TResult Function(_LoginFailureVerifyCodeState value)
        failureVerifyCode,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult? Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult? Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult? Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoadingState implements LoginState {
  const factory _LoginLoadingState() = _$_LoginLoadingState;
}

/// @nodoc
abstract class _$$_LoginSuccessRequestCodeStateCopyWith<$Res> {
  factory _$$_LoginSuccessRequestCodeStateCopyWith(
          _$_LoginSuccessRequestCodeState value,
          $Res Function(_$_LoginSuccessRequestCodeState) then) =
      __$$_LoginSuccessRequestCodeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String tickedId, String username});
}

/// @nodoc
class __$$_LoginSuccessRequestCodeStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginSuccessRequestCodeState>
    implements _$$_LoginSuccessRequestCodeStateCopyWith<$Res> {
  __$$_LoginSuccessRequestCodeStateCopyWithImpl(
      _$_LoginSuccessRequestCodeState _value,
      $Res Function(_$_LoginSuccessRequestCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickedId = null,
    Object? username = null,
  }) {
    return _then(_$_LoginSuccessRequestCodeState(
      tickedId: null == tickedId
          ? _value.tickedId
          : tickedId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginSuccessRequestCodeState implements _LoginSuccessRequestCodeState {
  const _$_LoginSuccessRequestCodeState(
      {required this.tickedId, required this.username});

  @override
  final String tickedId;
  @override
  final String username;

  @override
  String toString() {
    return 'LoginState.successRequestCode(tickedId: $tickedId, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginSuccessRequestCodeState &&
            (identical(other.tickedId, tickedId) ||
                other.tickedId == tickedId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tickedId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginSuccessRequestCodeStateCopyWith<_$_LoginSuccessRequestCodeState>
      get copyWith => __$$_LoginSuccessRequestCodeStateCopyWithImpl<
          _$_LoginSuccessRequestCodeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String tickedId, String username)
        successRequestCode,
    required TResult Function() successVerifyCode,
    required TResult Function(String message) failureRequestCode,
    required TResult Function(String message) failureVerifyCode,
  }) {
    return successRequestCode(tickedId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String tickedId, String username)? successRequestCode,
    TResult? Function()? successVerifyCode,
    TResult? Function(String message)? failureRequestCode,
    TResult? Function(String message)? failureVerifyCode,
  }) {
    return successRequestCode?.call(tickedId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String tickedId, String username)? successRequestCode,
    TResult Function()? successVerifyCode,
    TResult Function(String message)? failureRequestCode,
    TResult Function(String message)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (successRequestCode != null) {
      return successRequestCode(tickedId, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessRequestCodeState value)
        successRequestCode,
    required TResult Function(_LoginSuccessVerifyCodeState value)
        successVerifyCode,
    required TResult Function(_LoginFailureRequestCodeState value)
        failureRequestCode,
    required TResult Function(_LoginFailureVerifyCodeState value)
        failureVerifyCode,
  }) {
    return successRequestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult? Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult? Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult? Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
  }) {
    return successRequestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (successRequestCode != null) {
      return successRequestCode(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccessRequestCodeState implements LoginState {
  const factory _LoginSuccessRequestCodeState(
      {required final String tickedId,
      required final String username}) = _$_LoginSuccessRequestCodeState;

  String get tickedId;
  String get username;
  @JsonKey(ignore: true)
  _$$_LoginSuccessRequestCodeStateCopyWith<_$_LoginSuccessRequestCodeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginSuccessVerifyCodeStateCopyWith<$Res> {
  factory _$$_LoginSuccessVerifyCodeStateCopyWith(
          _$_LoginSuccessVerifyCodeState value,
          $Res Function(_$_LoginSuccessVerifyCodeState) then) =
      __$$_LoginSuccessVerifyCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginSuccessVerifyCodeStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginSuccessVerifyCodeState>
    implements _$$_LoginSuccessVerifyCodeStateCopyWith<$Res> {
  __$$_LoginSuccessVerifyCodeStateCopyWithImpl(
      _$_LoginSuccessVerifyCodeState _value,
      $Res Function(_$_LoginSuccessVerifyCodeState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginSuccessVerifyCodeState implements _LoginSuccessVerifyCodeState {
  const _$_LoginSuccessVerifyCodeState();

  @override
  String toString() {
    return 'LoginState.successVerifyCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginSuccessVerifyCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String tickedId, String username)
        successRequestCode,
    required TResult Function() successVerifyCode,
    required TResult Function(String message) failureRequestCode,
    required TResult Function(String message) failureVerifyCode,
  }) {
    return successVerifyCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String tickedId, String username)? successRequestCode,
    TResult? Function()? successVerifyCode,
    TResult? Function(String message)? failureRequestCode,
    TResult? Function(String message)? failureVerifyCode,
  }) {
    return successVerifyCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String tickedId, String username)? successRequestCode,
    TResult Function()? successVerifyCode,
    TResult Function(String message)? failureRequestCode,
    TResult Function(String message)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (successVerifyCode != null) {
      return successVerifyCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessRequestCodeState value)
        successRequestCode,
    required TResult Function(_LoginSuccessVerifyCodeState value)
        successVerifyCode,
    required TResult Function(_LoginFailureRequestCodeState value)
        failureRequestCode,
    required TResult Function(_LoginFailureVerifyCodeState value)
        failureVerifyCode,
  }) {
    return successVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult? Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult? Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult? Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
  }) {
    return successVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (successVerifyCode != null) {
      return successVerifyCode(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccessVerifyCodeState implements LoginState {
  const factory _LoginSuccessVerifyCodeState() = _$_LoginSuccessVerifyCodeState;
}

/// @nodoc
abstract class _$$_LoginFailureRequestCodeStateCopyWith<$Res> {
  factory _$$_LoginFailureRequestCodeStateCopyWith(
          _$_LoginFailureRequestCodeState value,
          $Res Function(_$_LoginFailureRequestCodeState) then) =
      __$$_LoginFailureRequestCodeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoginFailureRequestCodeStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginFailureRequestCodeState>
    implements _$$_LoginFailureRequestCodeStateCopyWith<$Res> {
  __$$_LoginFailureRequestCodeStateCopyWithImpl(
      _$_LoginFailureRequestCodeState _value,
      $Res Function(_$_LoginFailureRequestCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoginFailureRequestCodeState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginFailureRequestCodeState implements _LoginFailureRequestCodeState {
  const _$_LoginFailureRequestCodeState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failureRequestCode(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFailureRequestCodeState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFailureRequestCodeStateCopyWith<_$_LoginFailureRequestCodeState>
      get copyWith => __$$_LoginFailureRequestCodeStateCopyWithImpl<
          _$_LoginFailureRequestCodeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String tickedId, String username)
        successRequestCode,
    required TResult Function() successVerifyCode,
    required TResult Function(String message) failureRequestCode,
    required TResult Function(String message) failureVerifyCode,
  }) {
    return failureRequestCode(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String tickedId, String username)? successRequestCode,
    TResult? Function()? successVerifyCode,
    TResult? Function(String message)? failureRequestCode,
    TResult? Function(String message)? failureVerifyCode,
  }) {
    return failureRequestCode?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String tickedId, String username)? successRequestCode,
    TResult Function()? successVerifyCode,
    TResult Function(String message)? failureRequestCode,
    TResult Function(String message)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (failureRequestCode != null) {
      return failureRequestCode(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessRequestCodeState value)
        successRequestCode,
    required TResult Function(_LoginSuccessVerifyCodeState value)
        successVerifyCode,
    required TResult Function(_LoginFailureRequestCodeState value)
        failureRequestCode,
    required TResult Function(_LoginFailureVerifyCodeState value)
        failureVerifyCode,
  }) {
    return failureRequestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult? Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult? Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult? Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
  }) {
    return failureRequestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (failureRequestCode != null) {
      return failureRequestCode(this);
    }
    return orElse();
  }
}

abstract class _LoginFailureRequestCodeState implements LoginState {
  const factory _LoginFailureRequestCodeState({required final String message}) =
      _$_LoginFailureRequestCodeState;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoginFailureRequestCodeStateCopyWith<_$_LoginFailureRequestCodeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginFailureVerifyCodeStateCopyWith<$Res> {
  factory _$$_LoginFailureVerifyCodeStateCopyWith(
          _$_LoginFailureVerifyCodeState value,
          $Res Function(_$_LoginFailureVerifyCodeState) then) =
      __$$_LoginFailureVerifyCodeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoginFailureVerifyCodeStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginFailureVerifyCodeState>
    implements _$$_LoginFailureVerifyCodeStateCopyWith<$Res> {
  __$$_LoginFailureVerifyCodeStateCopyWithImpl(
      _$_LoginFailureVerifyCodeState _value,
      $Res Function(_$_LoginFailureVerifyCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoginFailureVerifyCodeState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginFailureVerifyCodeState implements _LoginFailureVerifyCodeState {
  const _$_LoginFailureVerifyCodeState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failureVerifyCode(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFailureVerifyCodeState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFailureVerifyCodeStateCopyWith<_$_LoginFailureVerifyCodeState>
      get copyWith => __$$_LoginFailureVerifyCodeStateCopyWithImpl<
          _$_LoginFailureVerifyCodeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String tickedId, String username)
        successRequestCode,
    required TResult Function() successVerifyCode,
    required TResult Function(String message) failureRequestCode,
    required TResult Function(String message) failureVerifyCode,
  }) {
    return failureVerifyCode(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String tickedId, String username)? successRequestCode,
    TResult? Function()? successVerifyCode,
    TResult? Function(String message)? failureRequestCode,
    TResult? Function(String message)? failureVerifyCode,
  }) {
    return failureVerifyCode?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String tickedId, String username)? successRequestCode,
    TResult Function()? successVerifyCode,
    TResult Function(String message)? failureRequestCode,
    TResult Function(String message)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (failureVerifyCode != null) {
      return failureVerifyCode(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessRequestCodeState value)
        successRequestCode,
    required TResult Function(_LoginSuccessVerifyCodeState value)
        successVerifyCode,
    required TResult Function(_LoginFailureRequestCodeState value)
        failureRequestCode,
    required TResult Function(_LoginFailureVerifyCodeState value)
        failureVerifyCode,
  }) {
    return failureVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult? Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult? Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult? Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
  }) {
    return failureVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessRequestCodeState value)? successRequestCode,
    TResult Function(_LoginSuccessVerifyCodeState value)? successVerifyCode,
    TResult Function(_LoginFailureRequestCodeState value)? failureRequestCode,
    TResult Function(_LoginFailureVerifyCodeState value)? failureVerifyCode,
    required TResult orElse(),
  }) {
    if (failureVerifyCode != null) {
      return failureVerifyCode(this);
    }
    return orElse();
  }
}

abstract class _LoginFailureVerifyCodeState implements LoginState {
  const factory _LoginFailureVerifyCodeState({required final String message}) =
      _$_LoginFailureVerifyCodeState;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoginFailureVerifyCodeStateCopyWith<_$_LoginFailureVerifyCodeState>
      get copyWith => throw _privateConstructorUsedError;
}
