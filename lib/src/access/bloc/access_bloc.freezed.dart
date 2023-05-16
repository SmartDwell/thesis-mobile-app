// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccessEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(String doorId) open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(String doorId)? open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(String doorId)? open,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessLoadEvent value) load,
    required TResult Function(_AccessRefreshEvent value) refresh,
    required TResult Function(_AccessOpenEvent value) open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessLoadEvent value)? load,
    TResult? Function(_AccessRefreshEvent value)? refresh,
    TResult? Function(_AccessOpenEvent value)? open,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessLoadEvent value)? load,
    TResult Function(_AccessRefreshEvent value)? refresh,
    TResult Function(_AccessOpenEvent value)? open,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessEventCopyWith<$Res> {
  factory $AccessEventCopyWith(
          AccessEvent value, $Res Function(AccessEvent) then) =
      _$AccessEventCopyWithImpl<$Res, AccessEvent>;
}

/// @nodoc
class _$AccessEventCopyWithImpl<$Res, $Val extends AccessEvent>
    implements $AccessEventCopyWith<$Res> {
  _$AccessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccessLoadEventCopyWith<$Res> {
  factory _$$_AccessLoadEventCopyWith(
          _$_AccessLoadEvent value, $Res Function(_$_AccessLoadEvent) then) =
      __$$_AccessLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessLoadEventCopyWithImpl<$Res>
    extends _$AccessEventCopyWithImpl<$Res, _$_AccessLoadEvent>
    implements _$$_AccessLoadEventCopyWith<$Res> {
  __$$_AccessLoadEventCopyWithImpl(
      _$_AccessLoadEvent _value, $Res Function(_$_AccessLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessLoadEvent implements _AccessLoadEvent {
  const _$_AccessLoadEvent();

  @override
  String toString() {
    return 'AccessEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(String doorId) open,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(String doorId)? open,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(String doorId)? open,
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
    required TResult Function(_AccessLoadEvent value) load,
    required TResult Function(_AccessRefreshEvent value) refresh,
    required TResult Function(_AccessOpenEvent value) open,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessLoadEvent value)? load,
    TResult? Function(_AccessRefreshEvent value)? refresh,
    TResult? Function(_AccessOpenEvent value)? open,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessLoadEvent value)? load,
    TResult Function(_AccessRefreshEvent value)? refresh,
    TResult Function(_AccessOpenEvent value)? open,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _AccessLoadEvent implements AccessEvent {
  const factory _AccessLoadEvent() = _$_AccessLoadEvent;
}

/// @nodoc
abstract class _$$_AccessRefreshEventCopyWith<$Res> {
  factory _$$_AccessRefreshEventCopyWith(_$_AccessRefreshEvent value,
          $Res Function(_$_AccessRefreshEvent) then) =
      __$$_AccessRefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessRefreshEventCopyWithImpl<$Res>
    extends _$AccessEventCopyWithImpl<$Res, _$_AccessRefreshEvent>
    implements _$$_AccessRefreshEventCopyWith<$Res> {
  __$$_AccessRefreshEventCopyWithImpl(
      _$_AccessRefreshEvent _value, $Res Function(_$_AccessRefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessRefreshEvent implements _AccessRefreshEvent {
  const _$_AccessRefreshEvent();

  @override
  String toString() {
    return 'AccessEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(String doorId) open,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(String doorId)? open,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(String doorId)? open,
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
    required TResult Function(_AccessLoadEvent value) load,
    required TResult Function(_AccessRefreshEvent value) refresh,
    required TResult Function(_AccessOpenEvent value) open,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessLoadEvent value)? load,
    TResult? Function(_AccessRefreshEvent value)? refresh,
    TResult? Function(_AccessOpenEvent value)? open,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessLoadEvent value)? load,
    TResult Function(_AccessRefreshEvent value)? refresh,
    TResult Function(_AccessOpenEvent value)? open,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _AccessRefreshEvent implements AccessEvent {
  const factory _AccessRefreshEvent() = _$_AccessRefreshEvent;
}

/// @nodoc
abstract class _$$_AccessOpenEventCopyWith<$Res> {
  factory _$$_AccessOpenEventCopyWith(
          _$_AccessOpenEvent value, $Res Function(_$_AccessOpenEvent) then) =
      __$$_AccessOpenEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String doorId});
}

/// @nodoc
class __$$_AccessOpenEventCopyWithImpl<$Res>
    extends _$AccessEventCopyWithImpl<$Res, _$_AccessOpenEvent>
    implements _$$_AccessOpenEventCopyWith<$Res> {
  __$$_AccessOpenEventCopyWithImpl(
      _$_AccessOpenEvent _value, $Res Function(_$_AccessOpenEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doorId = null,
  }) {
    return _then(_$_AccessOpenEvent(
      doorId: null == doorId
          ? _value.doorId
          : doorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccessOpenEvent implements _AccessOpenEvent {
  const _$_AccessOpenEvent({required this.doorId});

  @override
  final String doorId;

  @override
  String toString() {
    return 'AccessEvent.open(doorId: $doorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessOpenEvent &&
            (identical(other.doorId, doorId) || other.doorId == doorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessOpenEventCopyWith<_$_AccessOpenEvent> get copyWith =>
      __$$_AccessOpenEventCopyWithImpl<_$_AccessOpenEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(String doorId) open,
  }) {
    return open(doorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(String doorId)? open,
  }) {
    return open?.call(doorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(String doorId)? open,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(doorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessLoadEvent value) load,
    required TResult Function(_AccessRefreshEvent value) refresh,
    required TResult Function(_AccessOpenEvent value) open,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessLoadEvent value)? load,
    TResult? Function(_AccessRefreshEvent value)? refresh,
    TResult? Function(_AccessOpenEvent value)? open,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessLoadEvent value)? load,
    TResult Function(_AccessRefreshEvent value)? refresh,
    TResult Function(_AccessOpenEvent value)? open,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class _AccessOpenEvent implements AccessEvent {
  const factory _AccessOpenEvent({required final String doorId}) =
      _$_AccessOpenEvent;

  String get doorId;
  @JsonKey(ignore: true)
  _$$_AccessOpenEventCopyWith<_$_AccessOpenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessStateCopyWith<$Res> {
  factory $AccessStateCopyWith(
          AccessState value, $Res Function(AccessState) then) =
      _$AccessStateCopyWithImpl<$Res, AccessState>;
}

/// @nodoc
class _$AccessStateCopyWithImpl<$Res, $Val extends AccessState>
    implements $AccessStateCopyWith<$Res> {
  _$AccessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccessInitialStateCopyWith<$Res> {
  factory _$$_AccessInitialStateCopyWith(_$_AccessInitialState value,
          $Res Function(_$_AccessInitialState) then) =
      __$$_AccessInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessInitialStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessInitialState>
    implements _$$_AccessInitialStateCopyWith<$Res> {
  __$$_AccessInitialStateCopyWithImpl(
      _$_AccessInitialState _value, $Res Function(_$_AccessInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessInitialState implements _AccessInitialState {
  const _$_AccessInitialState();

  @override
  String toString() {
    return 'AccessState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
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
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AccessInitialState implements AccessState {
  const factory _AccessInitialState() = _$_AccessInitialState;
}

/// @nodoc
abstract class _$$_AccessLoadingStateCopyWith<$Res> {
  factory _$$_AccessLoadingStateCopyWith(_$_AccessLoadingState value,
          $Res Function(_$_AccessLoadingState) then) =
      __$$_AccessLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessLoadingStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessLoadingState>
    implements _$$_AccessLoadingStateCopyWith<$Res> {
  __$$_AccessLoadingStateCopyWithImpl(
      _$_AccessLoadingState _value, $Res Function(_$_AccessLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessLoadingState implements _AccessLoadingState {
  const _$_AccessLoadingState();

  @override
  String toString() {
    return 'AccessState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
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
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AccessLoadingState implements AccessState {
  const factory _AccessLoadingState() = _$_AccessLoadingState;
}

/// @nodoc
abstract class _$$_AccessLoadedStateCopyWith<$Res> {
  factory _$$_AccessLoadedStateCopyWith(_$_AccessLoadedState value,
          $Res Function(_$_AccessLoadedState) then) =
      __$$_AccessLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DoorDto> doors});
}

/// @nodoc
class __$$_AccessLoadedStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessLoadedState>
    implements _$$_AccessLoadedStateCopyWith<$Res> {
  __$$_AccessLoadedStateCopyWithImpl(
      _$_AccessLoadedState _value, $Res Function(_$_AccessLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doors = null,
  }) {
    return _then(_$_AccessLoadedState(
      doors: null == doors
          ? _value._doors
          : doors // ignore: cast_nullable_to_non_nullable
              as List<DoorDto>,
    ));
  }
}

/// @nodoc

class _$_AccessLoadedState implements _AccessLoadedState {
  const _$_AccessLoadedState({required final List<DoorDto> doors})
      : _doors = doors;

  final List<DoorDto> _doors;
  @override
  List<DoorDto> get doors {
    if (_doors is EqualUnmodifiableListView) return _doors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doors);
  }

  @override
  String toString() {
    return 'AccessState.loaded(doors: $doors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessLoadedState &&
            const DeepCollectionEquality().equals(other._doors, _doors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessLoadedStateCopyWith<_$_AccessLoadedState> get copyWith =>
      __$$_AccessLoadedStateCopyWithImpl<_$_AccessLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loaded(doors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loaded?.call(doors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(doors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AccessLoadedState implements AccessState {
  const factory _AccessLoadedState({required final List<DoorDto> doors}) =
      _$_AccessLoadedState;

  List<DoorDto> get doors;
  @JsonKey(ignore: true)
  _$$_AccessLoadedStateCopyWith<_$_AccessLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccessSuccessOpenedStateCopyWith<$Res> {
  factory _$$_AccessSuccessOpenedStateCopyWith(
          _$_AccessSuccessOpenedState value,
          $Res Function(_$_AccessSuccessOpenedState) then) =
      __$$_AccessSuccessOpenedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessSuccessOpenedStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessSuccessOpenedState>
    implements _$$_AccessSuccessOpenedStateCopyWith<$Res> {
  __$$_AccessSuccessOpenedStateCopyWithImpl(_$_AccessSuccessOpenedState _value,
      $Res Function(_$_AccessSuccessOpenedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessSuccessOpenedState implements _AccessSuccessOpenedState {
  const _$_AccessSuccessOpenedState();

  @override
  String toString() {
    return 'AccessState.successOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessSuccessOpenedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return successOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return successOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successOpened != null) {
      return successOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return successOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return successOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successOpened != null) {
      return successOpened(this);
    }
    return orElse();
  }
}

abstract class _AccessSuccessOpenedState implements AccessState {
  const factory _AccessSuccessOpenedState() = _$_AccessSuccessOpenedState;
}

/// @nodoc
abstract class _$$_AccessFailureOpenedStateCopyWith<$Res> {
  factory _$$_AccessFailureOpenedStateCopyWith(
          _$_AccessFailureOpenedState value,
          $Res Function(_$_AccessFailureOpenedState) then) =
      __$$_AccessFailureOpenedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessFailureOpenedStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessFailureOpenedState>
    implements _$$_AccessFailureOpenedStateCopyWith<$Res> {
  __$$_AccessFailureOpenedStateCopyWithImpl(_$_AccessFailureOpenedState _value,
      $Res Function(_$_AccessFailureOpenedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessFailureOpenedState implements _AccessFailureOpenedState {
  const _$_AccessFailureOpenedState();

  @override
  String toString() {
    return 'AccessState.failureOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessFailureOpenedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return failureOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return failureOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (failureOpened != null) {
      return failureOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return failureOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return failureOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (failureOpened != null) {
      return failureOpened(this);
    }
    return orElse();
  }
}

abstract class _AccessFailureOpenedState implements AccessState {
  const factory _AccessFailureOpenedState() = _$_AccessFailureOpenedState;
}

/// @nodoc
abstract class _$$_AccessEmptyStateCopyWith<$Res> {
  factory _$$_AccessEmptyStateCopyWith(
          _$_AccessEmptyState value, $Res Function(_$_AccessEmptyState) then) =
      __$$_AccessEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessEmptyStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessEmptyState>
    implements _$$_AccessEmptyStateCopyWith<$Res> {
  __$$_AccessEmptyStateCopyWithImpl(
      _$_AccessEmptyState _value, $Res Function(_$_AccessEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessEmptyState implements _AccessEmptyState {
  const _$_AccessEmptyState();

  @override
  String toString() {
    return 'AccessState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
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
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _AccessEmptyState implements AccessState {
  const factory _AccessEmptyState() = _$_AccessEmptyState;
}

/// @nodoc
abstract class _$$_AccessErrorStateCopyWith<$Res> {
  factory _$$_AccessErrorStateCopyWith(
          _$_AccessErrorState value, $Res Function(_$_AccessErrorState) then) =
      __$$_AccessErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessErrorStateCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$_AccessErrorState>
    implements _$$_AccessErrorStateCopyWith<$Res> {
  __$$_AccessErrorStateCopyWithImpl(
      _$_AccessErrorState _value, $Res Function(_$_AccessErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessErrorState implements _AccessErrorState {
  const _$_AccessErrorState();

  @override
  String toString() {
    return 'AccessState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoorDto> doors) loaded,
    required TResult Function() successOpened,
    required TResult Function() failureOpened,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoorDto> doors)? loaded,
    TResult? Function()? successOpened,
    TResult? Function()? failureOpened,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoorDto> doors)? loaded,
    TResult Function()? successOpened,
    TResult Function()? failureOpened,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessInitialState value) initial,
    required TResult Function(_AccessLoadingState value) loading,
    required TResult Function(_AccessLoadedState value) loaded,
    required TResult Function(_AccessSuccessOpenedState value) successOpened,
    required TResult Function(_AccessFailureOpenedState value) failureOpened,
    required TResult Function(_AccessEmptyState value) empty,
    required TResult Function(_AccessErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessInitialState value)? initial,
    TResult? Function(_AccessLoadingState value)? loading,
    TResult? Function(_AccessLoadedState value)? loaded,
    TResult? Function(_AccessSuccessOpenedState value)? successOpened,
    TResult? Function(_AccessFailureOpenedState value)? failureOpened,
    TResult? Function(_AccessEmptyState value)? empty,
    TResult? Function(_AccessErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessInitialState value)? initial,
    TResult Function(_AccessLoadingState value)? loading,
    TResult Function(_AccessLoadedState value)? loaded,
    TResult Function(_AccessSuccessOpenedState value)? successOpened,
    TResult Function(_AccessFailureOpenedState value)? failureOpened,
    TResult Function(_AccessEmptyState value)? empty,
    TResult Function(_AccessErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AccessErrorState implements AccessState {
  const factory _AccessErrorState() = _$_AccessErrorState;
}
