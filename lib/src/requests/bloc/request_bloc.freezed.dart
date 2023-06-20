// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(RequestDto requestDto) loadSingle,
    required TResult Function(String requestId) loadSingleById,
    required TResult Function() loadAddScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(RequestDto requestDto)? loadSingle,
    TResult? Function(String requestId)? loadSingleById,
    TResult? Function()? loadAddScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(RequestDto requestDto)? loadSingle,
    TResult Function(String requestId)? loadSingleById,
    TResult Function()? loadAddScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLoadEvent value) load,
    required TResult Function(_RequestRefreshEvent value) refresh,
    required TResult Function(_RequestLoadSingleEvent value) loadSingle,
    required TResult Function(_RequestLoadSingleByIdEvent value) loadSingleById,
    required TResult Function(_RequestLoadAddScreenEvent value) loadAddScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestLoadEvent value)? load,
    TResult? Function(_RequestRefreshEvent value)? refresh,
    TResult? Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult? Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult? Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLoadEvent value)? load,
    TResult Function(_RequestRefreshEvent value)? refresh,
    TResult Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res, RequestEvent>;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res, $Val extends RequestEvent>
    implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RequestLoadEventCopyWith<$Res> {
  factory _$$_RequestLoadEventCopyWith(
          _$_RequestLoadEvent value, $Res Function(_$_RequestLoadEvent) then) =
      __$$_RequestLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestLoadEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$_RequestLoadEvent>
    implements _$$_RequestLoadEventCopyWith<$Res> {
  __$$_RequestLoadEventCopyWithImpl(
      _$_RequestLoadEvent _value, $Res Function(_$_RequestLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestLoadEvent implements _RequestLoadEvent {
  const _$_RequestLoadEvent();

  @override
  String toString() {
    return 'RequestEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(RequestDto requestDto) loadSingle,
    required TResult Function(String requestId) loadSingleById,
    required TResult Function() loadAddScreen,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(RequestDto requestDto)? loadSingle,
    TResult? Function(String requestId)? loadSingleById,
    TResult? Function()? loadAddScreen,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(RequestDto requestDto)? loadSingle,
    TResult Function(String requestId)? loadSingleById,
    TResult Function()? loadAddScreen,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLoadEvent value) load,
    required TResult Function(_RequestRefreshEvent value) refresh,
    required TResult Function(_RequestLoadSingleEvent value) loadSingle,
    required TResult Function(_RequestLoadSingleByIdEvent value) loadSingleById,
    required TResult Function(_RequestLoadAddScreenEvent value) loadAddScreen,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestLoadEvent value)? load,
    TResult? Function(_RequestRefreshEvent value)? refresh,
    TResult? Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult? Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult? Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLoadEvent value)? load,
    TResult Function(_RequestRefreshEvent value)? refresh,
    TResult Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadEvent implements RequestEvent {
  const factory _RequestLoadEvent() = _$_RequestLoadEvent;
}

/// @nodoc
abstract class _$$_RequestRefreshEventCopyWith<$Res> {
  factory _$$_RequestRefreshEventCopyWith(_$_RequestRefreshEvent value,
          $Res Function(_$_RequestRefreshEvent) then) =
      __$$_RequestRefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestRefreshEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$_RequestRefreshEvent>
    implements _$$_RequestRefreshEventCopyWith<$Res> {
  __$$_RequestRefreshEventCopyWithImpl(_$_RequestRefreshEvent _value,
      $Res Function(_$_RequestRefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestRefreshEvent implements _RequestRefreshEvent {
  const _$_RequestRefreshEvent();

  @override
  String toString() {
    return 'RequestEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(RequestDto requestDto) loadSingle,
    required TResult Function(String requestId) loadSingleById,
    required TResult Function() loadAddScreen,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(RequestDto requestDto)? loadSingle,
    TResult? Function(String requestId)? loadSingleById,
    TResult? Function()? loadAddScreen,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(RequestDto requestDto)? loadSingle,
    TResult Function(String requestId)? loadSingleById,
    TResult Function()? loadAddScreen,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLoadEvent value) load,
    required TResult Function(_RequestRefreshEvent value) refresh,
    required TResult Function(_RequestLoadSingleEvent value) loadSingle,
    required TResult Function(_RequestLoadSingleByIdEvent value) loadSingleById,
    required TResult Function(_RequestLoadAddScreenEvent value) loadAddScreen,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestLoadEvent value)? load,
    TResult? Function(_RequestRefreshEvent value)? refresh,
    TResult? Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult? Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult? Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLoadEvent value)? load,
    TResult Function(_RequestRefreshEvent value)? refresh,
    TResult Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RequestRefreshEvent implements RequestEvent {
  const factory _RequestRefreshEvent() = _$_RequestRefreshEvent;
}

/// @nodoc
abstract class _$$_RequestLoadSingleEventCopyWith<$Res> {
  factory _$$_RequestLoadSingleEventCopyWith(_$_RequestLoadSingleEvent value,
          $Res Function(_$_RequestLoadSingleEvent) then) =
      __$$_RequestLoadSingleEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestDto requestDto});

  $RequestDtoCopyWith<$Res> get requestDto;
}

/// @nodoc
class __$$_RequestLoadSingleEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$_RequestLoadSingleEvent>
    implements _$$_RequestLoadSingleEventCopyWith<$Res> {
  __$$_RequestLoadSingleEventCopyWithImpl(_$_RequestLoadSingleEvent _value,
      $Res Function(_$_RequestLoadSingleEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestDto = null,
  }) {
    return _then(_$_RequestLoadSingleEvent(
      requestDto: null == requestDto
          ? _value.requestDto
          : requestDto // ignore: cast_nullable_to_non_nullable
              as RequestDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestDtoCopyWith<$Res> get requestDto {
    return $RequestDtoCopyWith<$Res>(_value.requestDto, (value) {
      return _then(_value.copyWith(requestDto: value));
    });
  }
}

/// @nodoc

class _$_RequestLoadSingleEvent implements _RequestLoadSingleEvent {
  const _$_RequestLoadSingleEvent({required this.requestDto});

  @override
  final RequestDto requestDto;

  @override
  String toString() {
    return 'RequestEvent.loadSingle(requestDto: $requestDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoadSingleEvent &&
            (identical(other.requestDto, requestDto) ||
                other.requestDto == requestDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoadSingleEventCopyWith<_$_RequestLoadSingleEvent> get copyWith =>
      __$$_RequestLoadSingleEventCopyWithImpl<_$_RequestLoadSingleEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(RequestDto requestDto) loadSingle,
    required TResult Function(String requestId) loadSingleById,
    required TResult Function() loadAddScreen,
  }) {
    return loadSingle(requestDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(RequestDto requestDto)? loadSingle,
    TResult? Function(String requestId)? loadSingleById,
    TResult? Function()? loadAddScreen,
  }) {
    return loadSingle?.call(requestDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(RequestDto requestDto)? loadSingle,
    TResult Function(String requestId)? loadSingleById,
    TResult Function()? loadAddScreen,
    required TResult orElse(),
  }) {
    if (loadSingle != null) {
      return loadSingle(requestDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLoadEvent value) load,
    required TResult Function(_RequestRefreshEvent value) refresh,
    required TResult Function(_RequestLoadSingleEvent value) loadSingle,
    required TResult Function(_RequestLoadSingleByIdEvent value) loadSingleById,
    required TResult Function(_RequestLoadAddScreenEvent value) loadAddScreen,
  }) {
    return loadSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestLoadEvent value)? load,
    TResult? Function(_RequestRefreshEvent value)? refresh,
    TResult? Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult? Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult? Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
  }) {
    return loadSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLoadEvent value)? load,
    TResult Function(_RequestRefreshEvent value)? refresh,
    TResult Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
    required TResult orElse(),
  }) {
    if (loadSingle != null) {
      return loadSingle(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadSingleEvent implements RequestEvent {
  const factory _RequestLoadSingleEvent(
      {required final RequestDto requestDto}) = _$_RequestLoadSingleEvent;

  RequestDto get requestDto;
  @JsonKey(ignore: true)
  _$$_RequestLoadSingleEventCopyWith<_$_RequestLoadSingleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestLoadSingleByIdEventCopyWith<$Res> {
  factory _$$_RequestLoadSingleByIdEventCopyWith(
          _$_RequestLoadSingleByIdEvent value,
          $Res Function(_$_RequestLoadSingleByIdEvent) then) =
      __$$_RequestLoadSingleByIdEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId});
}

/// @nodoc
class __$$_RequestLoadSingleByIdEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$_RequestLoadSingleByIdEvent>
    implements _$$_RequestLoadSingleByIdEventCopyWith<$Res> {
  __$$_RequestLoadSingleByIdEventCopyWithImpl(
      _$_RequestLoadSingleByIdEvent _value,
      $Res Function(_$_RequestLoadSingleByIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_$_RequestLoadSingleByIdEvent(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestLoadSingleByIdEvent implements _RequestLoadSingleByIdEvent {
  const _$_RequestLoadSingleByIdEvent({required this.requestId});

  @override
  final String requestId;

  @override
  String toString() {
    return 'RequestEvent.loadSingleById(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoadSingleByIdEvent &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoadSingleByIdEventCopyWith<_$_RequestLoadSingleByIdEvent>
      get copyWith => __$$_RequestLoadSingleByIdEventCopyWithImpl<
          _$_RequestLoadSingleByIdEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(RequestDto requestDto) loadSingle,
    required TResult Function(String requestId) loadSingleById,
    required TResult Function() loadAddScreen,
  }) {
    return loadSingleById(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(RequestDto requestDto)? loadSingle,
    TResult? Function(String requestId)? loadSingleById,
    TResult? Function()? loadAddScreen,
  }) {
    return loadSingleById?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(RequestDto requestDto)? loadSingle,
    TResult Function(String requestId)? loadSingleById,
    TResult Function()? loadAddScreen,
    required TResult orElse(),
  }) {
    if (loadSingleById != null) {
      return loadSingleById(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLoadEvent value) load,
    required TResult Function(_RequestRefreshEvent value) refresh,
    required TResult Function(_RequestLoadSingleEvent value) loadSingle,
    required TResult Function(_RequestLoadSingleByIdEvent value) loadSingleById,
    required TResult Function(_RequestLoadAddScreenEvent value) loadAddScreen,
  }) {
    return loadSingleById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestLoadEvent value)? load,
    TResult? Function(_RequestRefreshEvent value)? refresh,
    TResult? Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult? Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult? Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
  }) {
    return loadSingleById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLoadEvent value)? load,
    TResult Function(_RequestRefreshEvent value)? refresh,
    TResult Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
    required TResult orElse(),
  }) {
    if (loadSingleById != null) {
      return loadSingleById(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadSingleByIdEvent implements RequestEvent {
  const factory _RequestLoadSingleByIdEvent({required final String requestId}) =
      _$_RequestLoadSingleByIdEvent;

  String get requestId;
  @JsonKey(ignore: true)
  _$$_RequestLoadSingleByIdEventCopyWith<_$_RequestLoadSingleByIdEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestLoadAddScreenEventCopyWith<$Res> {
  factory _$$_RequestLoadAddScreenEventCopyWith(
          _$_RequestLoadAddScreenEvent value,
          $Res Function(_$_RequestLoadAddScreenEvent) then) =
      __$$_RequestLoadAddScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestLoadAddScreenEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$_RequestLoadAddScreenEvent>
    implements _$$_RequestLoadAddScreenEventCopyWith<$Res> {
  __$$_RequestLoadAddScreenEventCopyWithImpl(
      _$_RequestLoadAddScreenEvent _value,
      $Res Function(_$_RequestLoadAddScreenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestLoadAddScreenEvent implements _RequestLoadAddScreenEvent {
  const _$_RequestLoadAddScreenEvent();

  @override
  String toString() {
    return 'RequestEvent.loadAddScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoadAddScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(RequestDto requestDto) loadSingle,
    required TResult Function(String requestId) loadSingleById,
    required TResult Function() loadAddScreen,
  }) {
    return loadAddScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(RequestDto requestDto)? loadSingle,
    TResult? Function(String requestId)? loadSingleById,
    TResult? Function()? loadAddScreen,
  }) {
    return loadAddScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(RequestDto requestDto)? loadSingle,
    TResult Function(String requestId)? loadSingleById,
    TResult Function()? loadAddScreen,
    required TResult orElse(),
  }) {
    if (loadAddScreen != null) {
      return loadAddScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLoadEvent value) load,
    required TResult Function(_RequestRefreshEvent value) refresh,
    required TResult Function(_RequestLoadSingleEvent value) loadSingle,
    required TResult Function(_RequestLoadSingleByIdEvent value) loadSingleById,
    required TResult Function(_RequestLoadAddScreenEvent value) loadAddScreen,
  }) {
    return loadAddScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestLoadEvent value)? load,
    TResult? Function(_RequestRefreshEvent value)? refresh,
    TResult? Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult? Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult? Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
  }) {
    return loadAddScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLoadEvent value)? load,
    TResult Function(_RequestRefreshEvent value)? refresh,
    TResult Function(_RequestLoadSingleEvent value)? loadSingle,
    TResult Function(_RequestLoadSingleByIdEvent value)? loadSingleById,
    TResult Function(_RequestLoadAddScreenEvent value)? loadAddScreen,
    required TResult orElse(),
  }) {
    if (loadAddScreen != null) {
      return loadAddScreen(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadAddScreenEvent implements RequestEvent {
  const factory _RequestLoadAddScreenEvent() = _$_RequestLoadAddScreenEvent;
}

/// @nodoc
mixin _$RequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res, RequestState>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res, $Val extends RequestState>
    implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RequestInitialStateCopyWith<$Res> {
  factory _$$_RequestInitialStateCopyWith(_$_RequestInitialState value,
          $Res Function(_$_RequestInitialState) then) =
      __$$_RequestInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestInitialStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestInitialState>
    implements _$$_RequestInitialStateCopyWith<$Res> {
  __$$_RequestInitialStateCopyWithImpl(_$_RequestInitialState _value,
      $Res Function(_$_RequestInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestInitialState implements _RequestInitialState {
  const _$_RequestInitialState();

  @override
  String toString() {
    return 'RequestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RequestInitialState implements RequestState {
  const factory _RequestInitialState() = _$_RequestInitialState;
}

/// @nodoc
abstract class _$$_RequestLoadingStateCopyWith<$Res> {
  factory _$$_RequestLoadingStateCopyWith(_$_RequestLoadingState value,
          $Res Function(_$_RequestLoadingState) then) =
      __$$_RequestLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestLoadingStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestLoadingState>
    implements _$$_RequestLoadingStateCopyWith<$Res> {
  __$$_RequestLoadingStateCopyWithImpl(_$_RequestLoadingState _value,
      $Res Function(_$_RequestLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestLoadingState implements _RequestLoadingState {
  const _$_RequestLoadingState();

  @override
  String toString() {
    return 'RequestState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
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
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadingState implements RequestState {
  const factory _RequestLoadingState() = _$_RequestLoadingState;
}

/// @nodoc
abstract class _$$_RequestLoadedStateCopyWith<$Res> {
  factory _$$_RequestLoadedStateCopyWith(_$_RequestLoadedState value,
          $Res Function(_$_RequestLoadedState) then) =
      __$$_RequestLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RequestDto> requests});
}

/// @nodoc
class __$$_RequestLoadedStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestLoadedState>
    implements _$$_RequestLoadedStateCopyWith<$Res> {
  __$$_RequestLoadedStateCopyWithImpl(
      _$_RequestLoadedState _value, $Res Function(_$_RequestLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
  }) {
    return _then(_$_RequestLoadedState(
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<RequestDto>,
    ));
  }
}

/// @nodoc

class _$_RequestLoadedState implements _RequestLoadedState {
  const _$_RequestLoadedState({required final List<RequestDto> requests})
      : _requests = requests;

  final List<RequestDto> _requests;
  @override
  List<RequestDto> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  String toString() {
    return 'RequestState.loaded(requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoadedState &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoadedStateCopyWith<_$_RequestLoadedState> get copyWith =>
      __$$_RequestLoadedStateCopyWithImpl<_$_RequestLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loaded(requests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(requests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadedState implements RequestState {
  const factory _RequestLoadedState(
      {required final List<RequestDto> requests}) = _$_RequestLoadedState;

  List<RequestDto> get requests;
  @JsonKey(ignore: true)
  _$$_RequestLoadedStateCopyWith<_$_RequestLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestLoadedSingleStateCopyWith<$Res> {
  factory _$$_RequestLoadedSingleStateCopyWith(
          _$_RequestLoadedSingleState value,
          $Res Function(_$_RequestLoadedSingleState) then) =
      __$$_RequestLoadedSingleStateCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestDto request});

  $RequestDtoCopyWith<$Res> get request;
}

/// @nodoc
class __$$_RequestLoadedSingleStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestLoadedSingleState>
    implements _$$_RequestLoadedSingleStateCopyWith<$Res> {
  __$$_RequestLoadedSingleStateCopyWithImpl(_$_RequestLoadedSingleState _value,
      $Res Function(_$_RequestLoadedSingleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_RequestLoadedSingleState(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestDtoCopyWith<$Res> get request {
    return $RequestDtoCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_RequestLoadedSingleState implements _RequestLoadedSingleState {
  const _$_RequestLoadedSingleState({required this.request});

  @override
  final RequestDto request;

  @override
  String toString() {
    return 'RequestState.loadedSingle(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoadedSingleState &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoadedSingleStateCopyWith<_$_RequestLoadedSingleState>
      get copyWith => __$$_RequestLoadedSingleStateCopyWithImpl<
          _$_RequestLoadedSingleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loadedSingle(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loadedSingle?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSingle != null) {
      return loadedSingle(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return loadedSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return loadedSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedSingle != null) {
      return loadedSingle(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadedSingleState implements RequestState {
  const factory _RequestLoadedSingleState({required final RequestDto request}) =
      _$_RequestLoadedSingleState;

  RequestDto get request;
  @JsonKey(ignore: true)
  _$$_RequestLoadedSingleStateCopyWith<_$_RequestLoadedSingleState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestLoadedAddScreenStateCopyWith<$Res> {
  factory _$$_RequestLoadedAddScreenStateCopyWith(
          _$_RequestLoadedAddScreenState value,
          $Res Function(_$_RequestLoadedAddScreenState) then) =
      __$$_RequestLoadedAddScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IncidentPointDto> points});
}

/// @nodoc
class __$$_RequestLoadedAddScreenStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestLoadedAddScreenState>
    implements _$$_RequestLoadedAddScreenStateCopyWith<$Res> {
  __$$_RequestLoadedAddScreenStateCopyWithImpl(
      _$_RequestLoadedAddScreenState _value,
      $Res Function(_$_RequestLoadedAddScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$_RequestLoadedAddScreenState(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<IncidentPointDto>,
    ));
  }
}

/// @nodoc

class _$_RequestLoadedAddScreenState implements _RequestLoadedAddScreenState {
  const _$_RequestLoadedAddScreenState(
      {required final List<IncidentPointDto> points})
      : _points = points;

  final List<IncidentPointDto> _points;
  @override
  List<IncidentPointDto> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'RequestState.loadedAddScreen(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoadedAddScreenState &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoadedAddScreenStateCopyWith<_$_RequestLoadedAddScreenState>
      get copyWith => __$$_RequestLoadedAddScreenStateCopyWithImpl<
          _$_RequestLoadedAddScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loadedAddScreen(points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loadedAddScreen?.call(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedAddScreen != null) {
      return loadedAddScreen(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return loadedAddScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return loadedAddScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedAddScreen != null) {
      return loadedAddScreen(this);
    }
    return orElse();
  }
}

abstract class _RequestLoadedAddScreenState implements RequestState {
  const factory _RequestLoadedAddScreenState(
          {required final List<IncidentPointDto> points}) =
      _$_RequestLoadedAddScreenState;

  List<IncidentPointDto> get points;
  @JsonKey(ignore: true)
  _$$_RequestLoadedAddScreenStateCopyWith<_$_RequestLoadedAddScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestEmptyStateCopyWith<$Res> {
  factory _$$_RequestEmptyStateCopyWith(_$_RequestEmptyState value,
          $Res Function(_$_RequestEmptyState) then) =
      __$$_RequestEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestEmptyStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestEmptyState>
    implements _$$_RequestEmptyStateCopyWith<$Res> {
  __$$_RequestEmptyStateCopyWithImpl(
      _$_RequestEmptyState _value, $Res Function(_$_RequestEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestEmptyState implements _RequestEmptyState {
  const _$_RequestEmptyState();

  @override
  String toString() {
    return 'RequestState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _RequestEmptyState implements RequestState {
  const factory _RequestEmptyState() = _$_RequestEmptyState;
}

/// @nodoc
abstract class _$$_RequestErrorStateCopyWith<$Res> {
  factory _$$_RequestErrorStateCopyWith(_$_RequestErrorState value,
          $Res Function(_$_RequestErrorState) then) =
      __$$_RequestErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RequestErrorStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestErrorState>
    implements _$$_RequestErrorStateCopyWith<$Res> {
  __$$_RequestErrorStateCopyWithImpl(
      _$_RequestErrorState _value, $Res Function(_$_RequestErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RequestErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestErrorState implements _RequestErrorState {
  const _$_RequestErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RequestState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestErrorStateCopyWith<_$_RequestErrorState> get copyWith =>
      __$$_RequestErrorStateCopyWithImpl<_$_RequestErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestDto> requests) loaded,
    required TResult Function(RequestDto request) loadedSingle,
    required TResult Function(List<IncidentPointDto> points) loadedAddScreen,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestDto> requests)? loaded,
    TResult? Function(RequestDto request)? loadedSingle,
    TResult? Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestDto> requests)? loaded,
    TResult Function(RequestDto request)? loadedSingle,
    TResult Function(List<IncidentPointDto> points)? loadedAddScreen,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestInitialState value) initial,
    required TResult Function(_RequestLoadingState value) loading,
    required TResult Function(_RequestLoadedState value) loaded,
    required TResult Function(_RequestLoadedSingleState value) loadedSingle,
    required TResult Function(_RequestLoadedAddScreenState value)
        loadedAddScreen,
    required TResult Function(_RequestEmptyState value) empty,
    required TResult Function(_RequestErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestInitialState value)? initial,
    TResult? Function(_RequestLoadingState value)? loading,
    TResult? Function(_RequestLoadedState value)? loaded,
    TResult? Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult? Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult? Function(_RequestEmptyState value)? empty,
    TResult? Function(_RequestErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestInitialState value)? initial,
    TResult Function(_RequestLoadingState value)? loading,
    TResult Function(_RequestLoadedState value)? loaded,
    TResult Function(_RequestLoadedSingleState value)? loadedSingle,
    TResult Function(_RequestLoadedAddScreenState value)? loadedAddScreen,
    TResult Function(_RequestEmptyState value)? empty,
    TResult Function(_RequestErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RequestErrorState implements RequestState {
  const factory _RequestErrorState({required final String message}) =
      _$_RequestErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_RequestErrorStateCopyWith<_$_RequestErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
