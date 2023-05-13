// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(PaymentDto paymentDto) loadSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(PaymentDto paymentDto)? loadSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(PaymentDto paymentDto)? loadSingle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentLoadEvent value) load,
    required TResult Function(_PaymentRefreshEvent value) refresh,
    required TResult Function(_PaymentLoadSingleEvent value) loadSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadEvent value)? load,
    TResult? Function(_PaymentRefreshEvent value)? refresh,
    TResult? Function(_PaymentLoadSingleEvent value)? loadSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadEvent value)? load,
    TResult Function(_PaymentRefreshEvent value)? refresh,
    TResult Function(_PaymentLoadSingleEvent value)? loadSingle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentLoadEventCopyWith<$Res> {
  factory _$$_PaymentLoadEventCopyWith(
          _$_PaymentLoadEvent value, $Res Function(_$_PaymentLoadEvent) then) =
      __$$_PaymentLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentLoadEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_PaymentLoadEvent>
    implements _$$_PaymentLoadEventCopyWith<$Res> {
  __$$_PaymentLoadEventCopyWithImpl(
      _$_PaymentLoadEvent _value, $Res Function(_$_PaymentLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentLoadEvent implements _PaymentLoadEvent {
  const _$_PaymentLoadEvent();

  @override
  String toString() {
    return 'PaymentEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(PaymentDto paymentDto) loadSingle,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(PaymentDto paymentDto)? loadSingle,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(PaymentDto paymentDto)? loadSingle,
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
    required TResult Function(_PaymentLoadEvent value) load,
    required TResult Function(_PaymentRefreshEvent value) refresh,
    required TResult Function(_PaymentLoadSingleEvent value) loadSingle,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadEvent value)? load,
    TResult? Function(_PaymentRefreshEvent value)? refresh,
    TResult? Function(_PaymentLoadSingleEvent value)? loadSingle,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadEvent value)? load,
    TResult Function(_PaymentRefreshEvent value)? refresh,
    TResult Function(_PaymentLoadSingleEvent value)? loadSingle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoadEvent implements PaymentEvent {
  const factory _PaymentLoadEvent() = _$_PaymentLoadEvent;
}

/// @nodoc
abstract class _$$_PaymentRefreshEventCopyWith<$Res> {
  factory _$$_PaymentRefreshEventCopyWith(_$_PaymentRefreshEvent value,
          $Res Function(_$_PaymentRefreshEvent) then) =
      __$$_PaymentRefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentRefreshEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_PaymentRefreshEvent>
    implements _$$_PaymentRefreshEventCopyWith<$Res> {
  __$$_PaymentRefreshEventCopyWithImpl(_$_PaymentRefreshEvent _value,
      $Res Function(_$_PaymentRefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentRefreshEvent implements _PaymentRefreshEvent {
  const _$_PaymentRefreshEvent();

  @override
  String toString() {
    return 'PaymentEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(PaymentDto paymentDto) loadSingle,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(PaymentDto paymentDto)? loadSingle,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(PaymentDto paymentDto)? loadSingle,
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
    required TResult Function(_PaymentLoadEvent value) load,
    required TResult Function(_PaymentRefreshEvent value) refresh,
    required TResult Function(_PaymentLoadSingleEvent value) loadSingle,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadEvent value)? load,
    TResult? Function(_PaymentRefreshEvent value)? refresh,
    TResult? Function(_PaymentLoadSingleEvent value)? loadSingle,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadEvent value)? load,
    TResult Function(_PaymentRefreshEvent value)? refresh,
    TResult Function(_PaymentLoadSingleEvent value)? loadSingle,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _PaymentRefreshEvent implements PaymentEvent {
  const factory _PaymentRefreshEvent() = _$_PaymentRefreshEvent;
}

/// @nodoc
abstract class _$$_PaymentLoadSingleEventCopyWith<$Res> {
  factory _$$_PaymentLoadSingleEventCopyWith(_$_PaymentLoadSingleEvent value,
          $Res Function(_$_PaymentLoadSingleEvent) then) =
      __$$_PaymentLoadSingleEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentDto paymentDto});

  $PaymentDtoCopyWith<$Res> get paymentDto;
}

/// @nodoc
class __$$_PaymentLoadSingleEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_PaymentLoadSingleEvent>
    implements _$$_PaymentLoadSingleEventCopyWith<$Res> {
  __$$_PaymentLoadSingleEventCopyWithImpl(_$_PaymentLoadSingleEvent _value,
      $Res Function(_$_PaymentLoadSingleEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDto = null,
  }) {
    return _then(_$_PaymentLoadSingleEvent(
      paymentDto: null == paymentDto
          ? _value.paymentDto
          : paymentDto // ignore: cast_nullable_to_non_nullable
              as PaymentDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDtoCopyWith<$Res> get paymentDto {
    return $PaymentDtoCopyWith<$Res>(_value.paymentDto, (value) {
      return _then(_value.copyWith(paymentDto: value));
    });
  }
}

/// @nodoc

class _$_PaymentLoadSingleEvent implements _PaymentLoadSingleEvent {
  const _$_PaymentLoadSingleEvent({required this.paymentDto});

  @override
  final PaymentDto paymentDto;

  @override
  String toString() {
    return 'PaymentEvent.loadSingle(paymentDto: $paymentDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentLoadSingleEvent &&
            (identical(other.paymentDto, paymentDto) ||
                other.paymentDto == paymentDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentLoadSingleEventCopyWith<_$_PaymentLoadSingleEvent> get copyWith =>
      __$$_PaymentLoadSingleEventCopyWithImpl<_$_PaymentLoadSingleEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(PaymentDto paymentDto) loadSingle,
  }) {
    return loadSingle(paymentDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(PaymentDto paymentDto)? loadSingle,
  }) {
    return loadSingle?.call(paymentDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(PaymentDto paymentDto)? loadSingle,
    required TResult orElse(),
  }) {
    if (loadSingle != null) {
      return loadSingle(paymentDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentLoadEvent value) load,
    required TResult Function(_PaymentRefreshEvent value) refresh,
    required TResult Function(_PaymentLoadSingleEvent value) loadSingle,
  }) {
    return loadSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentLoadEvent value)? load,
    TResult? Function(_PaymentRefreshEvent value)? refresh,
    TResult? Function(_PaymentLoadSingleEvent value)? loadSingle,
  }) {
    return loadSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentLoadEvent value)? load,
    TResult Function(_PaymentRefreshEvent value)? refresh,
    TResult Function(_PaymentLoadSingleEvent value)? loadSingle,
    required TResult orElse(),
  }) {
    if (loadSingle != null) {
      return loadSingle(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoadSingleEvent implements PaymentEvent {
  const factory _PaymentLoadSingleEvent(
      {required final PaymentDto paymentDto}) = _$_PaymentLoadSingleEvent;

  PaymentDto get paymentDto;
  @JsonKey(ignore: true)
  _$$_PaymentLoadSingleEventCopyWith<_$_PaymentLoadSingleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentInitialStateCopyWith<$Res> {
  factory _$$_PaymentInitialStateCopyWith(_$_PaymentInitialState value,
          $Res Function(_$_PaymentInitialState) then) =
      __$$_PaymentInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentInitialStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentInitialState>
    implements _$$_PaymentInitialStateCopyWith<$Res> {
  __$$_PaymentInitialStateCopyWithImpl(_$_PaymentInitialState _value,
      $Res Function(_$_PaymentInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentInitialState implements _PaymentInitialState {
  const _$_PaymentInitialState();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
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
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
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
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentInitialState implements PaymentState {
  const factory _PaymentInitialState() = _$_PaymentInitialState;
}

/// @nodoc
abstract class _$$_PaymentLoadingStateCopyWith<$Res> {
  factory _$$_PaymentLoadingStateCopyWith(_$_PaymentLoadingState value,
          $Res Function(_$_PaymentLoadingState) then) =
      __$$_PaymentLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentLoadingStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentLoadingState>
    implements _$$_PaymentLoadingStateCopyWith<$Res> {
  __$$_PaymentLoadingStateCopyWithImpl(_$_PaymentLoadingState _value,
      $Res Function(_$_PaymentLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentLoadingState implements _PaymentLoadingState {
  const _$_PaymentLoadingState();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
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
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
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
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoadingState implements PaymentState {
  const factory _PaymentLoadingState() = _$_PaymentLoadingState;
}

/// @nodoc
abstract class _$$_PaymentLoadedStateCopyWith<$Res> {
  factory _$$_PaymentLoadedStateCopyWith(_$_PaymentLoadedState value,
          $Res Function(_$_PaymentLoadedState) then) =
      __$$_PaymentLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentDto> payments});
}

/// @nodoc
class __$$_PaymentLoadedStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentLoadedState>
    implements _$$_PaymentLoadedStateCopyWith<$Res> {
  __$$_PaymentLoadedStateCopyWithImpl(
      _$_PaymentLoadedState _value, $Res Function(_$_PaymentLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
  }) {
    return _then(_$_PaymentLoadedState(
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>,
    ));
  }
}

/// @nodoc

class _$_PaymentLoadedState implements _PaymentLoadedState {
  const _$_PaymentLoadedState({required final List<PaymentDto> payments})
      : _payments = payments;

  final List<PaymentDto> _payments;
  @override
  List<PaymentDto> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'PaymentState.loaded(payments: $payments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentLoadedState &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentLoadedStateCopyWith<_$_PaymentLoadedState> get copyWith =>
      __$$_PaymentLoadedStateCopyWithImpl<_$_PaymentLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loaded(payments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loaded?.call(payments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(payments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoadedState implements PaymentState {
  const factory _PaymentLoadedState(
      {required final List<PaymentDto> payments}) = _$_PaymentLoadedState;

  List<PaymentDto> get payments;
  @JsonKey(ignore: true)
  _$$_PaymentLoadedStateCopyWith<_$_PaymentLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentLoadedSingleStateCopyWith<$Res> {
  factory _$$_PaymentLoadedSingleStateCopyWith(
          _$_PaymentLoadedSingleState value,
          $Res Function(_$_PaymentLoadedSingleState) then) =
      __$$_PaymentLoadedSingleStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentDto payment});

  $PaymentDtoCopyWith<$Res> get payment;
}

/// @nodoc
class __$$_PaymentLoadedSingleStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentLoadedSingleState>
    implements _$$_PaymentLoadedSingleStateCopyWith<$Res> {
  __$$_PaymentLoadedSingleStateCopyWithImpl(_$_PaymentLoadedSingleState _value,
      $Res Function(_$_PaymentLoadedSingleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$_PaymentLoadedSingleState(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDtoCopyWith<$Res> get payment {
    return $PaymentDtoCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$_PaymentLoadedSingleState implements _PaymentLoadedSingleState {
  const _$_PaymentLoadedSingleState({required this.payment});

  @override
  final PaymentDto payment;

  @override
  String toString() {
    return 'PaymentState.loadedSingle(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentLoadedSingleState &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentLoadedSingleStateCopyWith<_$_PaymentLoadedSingleState>
      get copyWith => __$$_PaymentLoadedSingleStateCopyWithImpl<
          _$_PaymentLoadedSingleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loadedSingle(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loadedSingle?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSingle != null) {
      return loadedSingle(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return loadedSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return loadedSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedSingle != null) {
      return loadedSingle(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoadedSingleState implements PaymentState {
  const factory _PaymentLoadedSingleState({required final PaymentDto payment}) =
      _$_PaymentLoadedSingleState;

  PaymentDto get payment;
  @JsonKey(ignore: true)
  _$$_PaymentLoadedSingleStateCopyWith<_$_PaymentLoadedSingleState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentEmptyStateCopyWith<$Res> {
  factory _$$_PaymentEmptyStateCopyWith(_$_PaymentEmptyState value,
          $Res Function(_$_PaymentEmptyState) then) =
      __$$_PaymentEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentEmptyStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentEmptyState>
    implements _$$_PaymentEmptyStateCopyWith<$Res> {
  __$$_PaymentEmptyStateCopyWithImpl(
      _$_PaymentEmptyState _value, $Res Function(_$_PaymentEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentEmptyState implements _PaymentEmptyState {
  const _$_PaymentEmptyState();

  @override
  String toString() {
    return 'PaymentState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
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
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
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
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _PaymentEmptyState implements PaymentState {
  const factory _PaymentEmptyState() = _$_PaymentEmptyState;
}

/// @nodoc
abstract class _$$_PaymentErrorStateCopyWith<$Res> {
  factory _$$_PaymentErrorStateCopyWith(_$_PaymentErrorState value,
          $Res Function(_$_PaymentErrorState) then) =
      __$$_PaymentErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentErrorStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentErrorState>
    implements _$$_PaymentErrorStateCopyWith<$Res> {
  __$$_PaymentErrorStateCopyWithImpl(
      _$_PaymentErrorState _value, $Res Function(_$_PaymentErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentErrorState implements _PaymentErrorState {
  const _$_PaymentErrorState();

  @override
  String toString() {
    return 'PaymentState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentDto> payments) loaded,
    required TResult Function(PaymentDto payment) loadedSingle,
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
    TResult? Function(List<PaymentDto> payments)? loaded,
    TResult? Function(PaymentDto payment)? loadedSingle,
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
    TResult Function(List<PaymentDto> payments)? loaded,
    TResult Function(PaymentDto payment)? loadedSingle,
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentLoadingState value) loading,
    required TResult Function(_PaymentLoadedState value) loaded,
    required TResult Function(_PaymentLoadedSingleState value) loadedSingle,
    required TResult Function(_PaymentEmptyState value) empty,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentLoadingState value)? loading,
    TResult? Function(_PaymentLoadedState value)? loaded,
    TResult? Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult? Function(_PaymentEmptyState value)? empty,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentLoadingState value)? loading,
    TResult Function(_PaymentLoadedState value)? loaded,
    TResult Function(_PaymentLoadedSingleState value)? loadedSingle,
    TResult Function(_PaymentEmptyState value)? empty,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PaymentErrorState implements PaymentState {
  const factory _PaymentErrorState() = _$_PaymentErrorState;
}
