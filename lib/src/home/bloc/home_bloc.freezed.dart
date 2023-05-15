// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(NewsDto newsDto) loadSingleNews,
    required TResult Function(PaymentDto paymentDto) loadSinglePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(NewsDto newsDto)? loadSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadSinglePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(NewsDto newsDto)? loadSingleNews,
    TResult Function(PaymentDto paymentDto)? loadSinglePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadEvent value) load,
    required TResult Function(_HomeRefreshEvent value) refresh,
    required TResult Function(_HomeLoadSingleNewsEvent value) loadSingleNews,
    required TResult Function(_HomeLoadSinglePaymentEvent value)
        loadSinglePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadEvent value)? load,
    TResult? Function(_HomeRefreshEvent value)? refresh,
    TResult? Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult? Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadEvent value)? load,
    TResult Function(_HomeRefreshEvent value)? refresh,
    TResult Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeLoadEventCopyWith<$Res> {
  factory _$$_HomeLoadEventCopyWith(
          _$_HomeLoadEvent value, $Res Function(_$_HomeLoadEvent) then) =
      __$$_HomeLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeLoadEvent>
    implements _$$_HomeLoadEventCopyWith<$Res> {
  __$$_HomeLoadEventCopyWithImpl(
      _$_HomeLoadEvent _value, $Res Function(_$_HomeLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeLoadEvent implements _HomeLoadEvent {
  const _$_HomeLoadEvent();

  @override
  String toString() {
    return 'HomeEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(NewsDto newsDto) loadSingleNews,
    required TResult Function(PaymentDto paymentDto) loadSinglePayment,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(NewsDto newsDto)? loadSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadSinglePayment,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(NewsDto newsDto)? loadSingleNews,
    TResult Function(PaymentDto paymentDto)? loadSinglePayment,
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
    required TResult Function(_HomeLoadEvent value) load,
    required TResult Function(_HomeRefreshEvent value) refresh,
    required TResult Function(_HomeLoadSingleNewsEvent value) loadSingleNews,
    required TResult Function(_HomeLoadSinglePaymentEvent value)
        loadSinglePayment,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadEvent value)? load,
    TResult? Function(_HomeRefreshEvent value)? refresh,
    TResult? Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult? Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadEvent value)? load,
    TResult Function(_HomeRefreshEvent value)? refresh,
    TResult Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadEvent implements HomeEvent {
  const factory _HomeLoadEvent() = _$_HomeLoadEvent;
}

/// @nodoc
abstract class _$$_HomeRefreshEventCopyWith<$Res> {
  factory _$$_HomeRefreshEventCopyWith(
          _$_HomeRefreshEvent value, $Res Function(_$_HomeRefreshEvent) then) =
      __$$_HomeRefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeRefreshEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeRefreshEvent>
    implements _$$_HomeRefreshEventCopyWith<$Res> {
  __$$_HomeRefreshEventCopyWithImpl(
      _$_HomeRefreshEvent _value, $Res Function(_$_HomeRefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeRefreshEvent implements _HomeRefreshEvent {
  const _$_HomeRefreshEvent();

  @override
  String toString() {
    return 'HomeEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(NewsDto newsDto) loadSingleNews,
    required TResult Function(PaymentDto paymentDto) loadSinglePayment,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(NewsDto newsDto)? loadSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadSinglePayment,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(NewsDto newsDto)? loadSingleNews,
    TResult Function(PaymentDto paymentDto)? loadSinglePayment,
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
    required TResult Function(_HomeLoadEvent value) load,
    required TResult Function(_HomeRefreshEvent value) refresh,
    required TResult Function(_HomeLoadSingleNewsEvent value) loadSingleNews,
    required TResult Function(_HomeLoadSinglePaymentEvent value)
        loadSinglePayment,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadEvent value)? load,
    TResult? Function(_HomeRefreshEvent value)? refresh,
    TResult? Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult? Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadEvent value)? load,
    TResult Function(_HomeRefreshEvent value)? refresh,
    TResult Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _HomeRefreshEvent implements HomeEvent {
  const factory _HomeRefreshEvent() = _$_HomeRefreshEvent;
}

/// @nodoc
abstract class _$$_HomeLoadSingleNewsEventCopyWith<$Res> {
  factory _$$_HomeLoadSingleNewsEventCopyWith(_$_HomeLoadSingleNewsEvent value,
          $Res Function(_$_HomeLoadSingleNewsEvent) then) =
      __$$_HomeLoadSingleNewsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsDto newsDto});

  $NewsDtoCopyWith<$Res> get newsDto;
}

/// @nodoc
class __$$_HomeLoadSingleNewsEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeLoadSingleNewsEvent>
    implements _$$_HomeLoadSingleNewsEventCopyWith<$Res> {
  __$$_HomeLoadSingleNewsEventCopyWithImpl(_$_HomeLoadSingleNewsEvent _value,
      $Res Function(_$_HomeLoadSingleNewsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsDto = null,
  }) {
    return _then(_$_HomeLoadSingleNewsEvent(
      newsDto: null == newsDto
          ? _value.newsDto
          : newsDto // ignore: cast_nullable_to_non_nullable
              as NewsDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDtoCopyWith<$Res> get newsDto {
    return $NewsDtoCopyWith<$Res>(_value.newsDto, (value) {
      return _then(_value.copyWith(newsDto: value));
    });
  }
}

/// @nodoc

class _$_HomeLoadSingleNewsEvent implements _HomeLoadSingleNewsEvent {
  const _$_HomeLoadSingleNewsEvent({required this.newsDto});

  @override
  final NewsDto newsDto;

  @override
  String toString() {
    return 'HomeEvent.loadSingleNews(newsDto: $newsDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadSingleNewsEvent &&
            (identical(other.newsDto, newsDto) || other.newsDto == newsDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadSingleNewsEventCopyWith<_$_HomeLoadSingleNewsEvent>
      get copyWith =>
          __$$_HomeLoadSingleNewsEventCopyWithImpl<_$_HomeLoadSingleNewsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(NewsDto newsDto) loadSingleNews,
    required TResult Function(PaymentDto paymentDto) loadSinglePayment,
  }) {
    return loadSingleNews(newsDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(NewsDto newsDto)? loadSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadSinglePayment,
  }) {
    return loadSingleNews?.call(newsDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(NewsDto newsDto)? loadSingleNews,
    TResult Function(PaymentDto paymentDto)? loadSinglePayment,
    required TResult orElse(),
  }) {
    if (loadSingleNews != null) {
      return loadSingleNews(newsDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadEvent value) load,
    required TResult Function(_HomeRefreshEvent value) refresh,
    required TResult Function(_HomeLoadSingleNewsEvent value) loadSingleNews,
    required TResult Function(_HomeLoadSinglePaymentEvent value)
        loadSinglePayment,
  }) {
    return loadSingleNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadEvent value)? load,
    TResult? Function(_HomeRefreshEvent value)? refresh,
    TResult? Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult? Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
  }) {
    return loadSingleNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadEvent value)? load,
    TResult Function(_HomeRefreshEvent value)? refresh,
    TResult Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
    required TResult orElse(),
  }) {
    if (loadSingleNews != null) {
      return loadSingleNews(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadSingleNewsEvent implements HomeEvent {
  const factory _HomeLoadSingleNewsEvent({required final NewsDto newsDto}) =
      _$_HomeLoadSingleNewsEvent;

  NewsDto get newsDto;
  @JsonKey(ignore: true)
  _$$_HomeLoadSingleNewsEventCopyWith<_$_HomeLoadSingleNewsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeLoadSinglePaymentEventCopyWith<$Res> {
  factory _$$_HomeLoadSinglePaymentEventCopyWith(
          _$_HomeLoadSinglePaymentEvent value,
          $Res Function(_$_HomeLoadSinglePaymentEvent) then) =
      __$$_HomeLoadSinglePaymentEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentDto paymentDto});

  $PaymentDtoCopyWith<$Res> get paymentDto;
}

/// @nodoc
class __$$_HomeLoadSinglePaymentEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeLoadSinglePaymentEvent>
    implements _$$_HomeLoadSinglePaymentEventCopyWith<$Res> {
  __$$_HomeLoadSinglePaymentEventCopyWithImpl(
      _$_HomeLoadSinglePaymentEvent _value,
      $Res Function(_$_HomeLoadSinglePaymentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDto = null,
  }) {
    return _then(_$_HomeLoadSinglePaymentEvent(
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

class _$_HomeLoadSinglePaymentEvent implements _HomeLoadSinglePaymentEvent {
  const _$_HomeLoadSinglePaymentEvent({required this.paymentDto});

  @override
  final PaymentDto paymentDto;

  @override
  String toString() {
    return 'HomeEvent.loadSinglePayment(paymentDto: $paymentDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadSinglePaymentEvent &&
            (identical(other.paymentDto, paymentDto) ||
                other.paymentDto == paymentDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadSinglePaymentEventCopyWith<_$_HomeLoadSinglePaymentEvent>
      get copyWith => __$$_HomeLoadSinglePaymentEventCopyWithImpl<
          _$_HomeLoadSinglePaymentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(NewsDto newsDto) loadSingleNews,
    required TResult Function(PaymentDto paymentDto) loadSinglePayment,
  }) {
    return loadSinglePayment(paymentDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(NewsDto newsDto)? loadSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadSinglePayment,
  }) {
    return loadSinglePayment?.call(paymentDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(NewsDto newsDto)? loadSingleNews,
    TResult Function(PaymentDto paymentDto)? loadSinglePayment,
    required TResult orElse(),
  }) {
    if (loadSinglePayment != null) {
      return loadSinglePayment(paymentDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadEvent value) load,
    required TResult Function(_HomeRefreshEvent value) refresh,
    required TResult Function(_HomeLoadSingleNewsEvent value) loadSingleNews,
    required TResult Function(_HomeLoadSinglePaymentEvent value)
        loadSinglePayment,
  }) {
    return loadSinglePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadEvent value)? load,
    TResult? Function(_HomeRefreshEvent value)? refresh,
    TResult? Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult? Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
  }) {
    return loadSinglePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadEvent value)? load,
    TResult Function(_HomeRefreshEvent value)? refresh,
    TResult Function(_HomeLoadSingleNewsEvent value)? loadSingleNews,
    TResult Function(_HomeLoadSinglePaymentEvent value)? loadSinglePayment,
    required TResult orElse(),
  }) {
    if (loadSinglePayment != null) {
      return loadSinglePayment(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadSinglePaymentEvent implements HomeEvent {
  const factory _HomeLoadSinglePaymentEvent(
      {required final PaymentDto paymentDto}) = _$_HomeLoadSinglePaymentEvent;

  PaymentDto get paymentDto;
  @JsonKey(ignore: true)
  _$$_HomeLoadSinglePaymentEventCopyWith<_$_HomeLoadSinglePaymentEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeInitialStateCopyWith<$Res> {
  factory _$$_HomeInitialStateCopyWith(
          _$_HomeInitialState value, $Res Function(_$_HomeInitialState) then) =
      __$$_HomeInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeInitialStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeInitialState>
    implements _$$_HomeInitialStateCopyWith<$Res> {
  __$$_HomeInitialStateCopyWithImpl(
      _$_HomeInitialState _value, $Res Function(_$_HomeInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeInitialState implements _HomeInitialState {
  const _$_HomeInitialState();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
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
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitialState implements HomeState {
  const factory _HomeInitialState() = _$_HomeInitialState;
}

/// @nodoc
abstract class _$$_HomeLoadingStateCopyWith<$Res> {
  factory _$$_HomeLoadingStateCopyWith(
          _$_HomeLoadingState value, $Res Function(_$_HomeLoadingState) then) =
      __$$_HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadingState>
    implements _$$_HomeLoadingStateCopyWith<$Res> {
  __$$_HomeLoadingStateCopyWithImpl(
      _$_HomeLoadingState _value, $Res Function(_$_HomeLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeLoadingState implements _HomeLoadingState {
  const _$_HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
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
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$_HomeLoadingState;
}

/// @nodoc
abstract class _$$_HomeLoadedStateCopyWith<$Res> {
  factory _$$_HomeLoadedStateCopyWith(
          _$_HomeLoadedState value, $Res Function(_$_HomeLoadedState) then) =
      __$$_HomeLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsDto> news, List<PaymentDto> payments});
}

/// @nodoc
class __$$_HomeLoadedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadedState>
    implements _$$_HomeLoadedStateCopyWith<$Res> {
  __$$_HomeLoadedStateCopyWithImpl(
      _$_HomeLoadedState _value, $Res Function(_$_HomeLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? payments = null,
  }) {
    return _then(_$_HomeLoadedState(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDto>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>,
    ));
  }
}

/// @nodoc

class _$_HomeLoadedState implements _HomeLoadedState {
  const _$_HomeLoadedState(
      {required final List<NewsDto> news,
      required final List<PaymentDto> payments})
      : _news = news,
        _payments = payments;

  final List<NewsDto> _news;
  @override
  List<NewsDto> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  final List<PaymentDto> _payments;
  @override
  List<PaymentDto> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'HomeState.loaded(news: $news, payments: $payments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadedState &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_news),
      const DeepCollectionEquality().hash(_payments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadedStateCopyWith<_$_HomeLoadedState> get copyWith =>
      __$$_HomeLoadedStateCopyWithImpl<_$_HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loaded(news, payments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loaded?.call(news, payments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(news, payments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedState implements HomeState {
  const factory _HomeLoadedState(
      {required final List<NewsDto> news,
      required final List<PaymentDto> payments}) = _$_HomeLoadedState;

  List<NewsDto> get news;
  List<PaymentDto> get payments;
  @JsonKey(ignore: true)
  _$$_HomeLoadedStateCopyWith<_$_HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeLoadedSingleNewsStateCopyWith<$Res> {
  factory _$$_HomeLoadedSingleNewsStateCopyWith(
          _$_HomeLoadedSingleNewsState value,
          $Res Function(_$_HomeLoadedSingleNewsState) then) =
      __$$_HomeLoadedSingleNewsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsDto newsDto});

  $NewsDtoCopyWith<$Res> get newsDto;
}

/// @nodoc
class __$$_HomeLoadedSingleNewsStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadedSingleNewsState>
    implements _$$_HomeLoadedSingleNewsStateCopyWith<$Res> {
  __$$_HomeLoadedSingleNewsStateCopyWithImpl(
      _$_HomeLoadedSingleNewsState _value,
      $Res Function(_$_HomeLoadedSingleNewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsDto = null,
  }) {
    return _then(_$_HomeLoadedSingleNewsState(
      newsDto: null == newsDto
          ? _value.newsDto
          : newsDto // ignore: cast_nullable_to_non_nullable
              as NewsDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDtoCopyWith<$Res> get newsDto {
    return $NewsDtoCopyWith<$Res>(_value.newsDto, (value) {
      return _then(_value.copyWith(newsDto: value));
    });
  }
}

/// @nodoc

class _$_HomeLoadedSingleNewsState implements _HomeLoadedSingleNewsState {
  const _$_HomeLoadedSingleNewsState({required this.newsDto});

  @override
  final NewsDto newsDto;

  @override
  String toString() {
    return 'HomeState.loadedSingleNews(newsDto: $newsDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadedSingleNewsState &&
            (identical(other.newsDto, newsDto) || other.newsDto == newsDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadedSingleNewsStateCopyWith<_$_HomeLoadedSingleNewsState>
      get copyWith => __$$_HomeLoadedSingleNewsStateCopyWithImpl<
          _$_HomeLoadedSingleNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loadedSingleNews(newsDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loadedSingleNews?.call(newsDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSingleNews != null) {
      return loadedSingleNews(newsDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loadedSingleNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return loadedSingleNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedSingleNews != null) {
      return loadedSingleNews(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedSingleNewsState implements HomeState {
  const factory _HomeLoadedSingleNewsState({required final NewsDto newsDto}) =
      _$_HomeLoadedSingleNewsState;

  NewsDto get newsDto;
  @JsonKey(ignore: true)
  _$$_HomeLoadedSingleNewsStateCopyWith<_$_HomeLoadedSingleNewsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeLoadedSinglePaymentStateCopyWith<$Res> {
  factory _$$_HomeLoadedSinglePaymentStateCopyWith(
          _$_HomeLoadedSinglePaymentState value,
          $Res Function(_$_HomeLoadedSinglePaymentState) then) =
      __$$_HomeLoadedSinglePaymentStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentDto paymentDto});

  $PaymentDtoCopyWith<$Res> get paymentDto;
}

/// @nodoc
class __$$_HomeLoadedSinglePaymentStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadedSinglePaymentState>
    implements _$$_HomeLoadedSinglePaymentStateCopyWith<$Res> {
  __$$_HomeLoadedSinglePaymentStateCopyWithImpl(
      _$_HomeLoadedSinglePaymentState _value,
      $Res Function(_$_HomeLoadedSinglePaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDto = null,
  }) {
    return _then(_$_HomeLoadedSinglePaymentState(
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

class _$_HomeLoadedSinglePaymentState implements _HomeLoadedSinglePaymentState {
  const _$_HomeLoadedSinglePaymentState({required this.paymentDto});

  @override
  final PaymentDto paymentDto;

  @override
  String toString() {
    return 'HomeState.loadedSinglePayment(paymentDto: $paymentDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadedSinglePaymentState &&
            (identical(other.paymentDto, paymentDto) ||
                other.paymentDto == paymentDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadedSinglePaymentStateCopyWith<_$_HomeLoadedSinglePaymentState>
      get copyWith => __$$_HomeLoadedSinglePaymentStateCopyWithImpl<
          _$_HomeLoadedSinglePaymentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loadedSinglePayment(paymentDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loadedSinglePayment?.call(paymentDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSinglePayment != null) {
      return loadedSinglePayment(paymentDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loadedSinglePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return loadedSinglePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadedSinglePayment != null) {
      return loadedSinglePayment(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedSinglePaymentState implements HomeState {
  const factory _HomeLoadedSinglePaymentState(
      {required final PaymentDto paymentDto}) = _$_HomeLoadedSinglePaymentState;

  PaymentDto get paymentDto;
  @JsonKey(ignore: true)
  _$$_HomeLoadedSinglePaymentStateCopyWith<_$_HomeLoadedSinglePaymentState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeEmptyStateCopyWith<$Res> {
  factory _$$_HomeEmptyStateCopyWith(
          _$_HomeEmptyState value, $Res Function(_$_HomeEmptyState) then) =
      __$$_HomeEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeEmptyStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeEmptyState>
    implements _$$_HomeEmptyStateCopyWith<$Res> {
  __$$_HomeEmptyStateCopyWithImpl(
      _$_HomeEmptyState _value, $Res Function(_$_HomeEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeEmptyState implements _HomeEmptyState {
  const _$_HomeEmptyState();

  @override
  String toString() {
    return 'HomeState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
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
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _HomeEmptyState implements HomeState {
  const factory _HomeEmptyState() = _$_HomeEmptyState;
}

/// @nodoc
abstract class _$$_HomeErrorStateCopyWith<$Res> {
  factory _$$_HomeErrorStateCopyWith(
          _$_HomeErrorState value, $Res Function(_$_HomeErrorState) then) =
      __$$_HomeErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeErrorStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeErrorState>
    implements _$$_HomeErrorStateCopyWith<$Res> {
  __$$_HomeErrorStateCopyWithImpl(
      _$_HomeErrorState _value, $Res Function(_$_HomeErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeErrorState implements _HomeErrorState {
  const _$_HomeErrorState();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsDto> news, List<PaymentDto> payments)
        loaded,
    required TResult Function(NewsDto newsDto) loadedSingleNews,
    required TResult Function(PaymentDto paymentDto) loadedSinglePayment,
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
    TResult? Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult? Function(NewsDto newsDto)? loadedSingleNews,
    TResult? Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    TResult Function(List<NewsDto> news, List<PaymentDto> payments)? loaded,
    TResult Function(NewsDto newsDto)? loadedSingleNews,
    TResult Function(PaymentDto paymentDto)? loadedSinglePayment,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeLoadedSingleNewsState value)
        loadedSingleNews,
    required TResult Function(_HomeLoadedSinglePaymentState value)
        loadedSinglePayment,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult? Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeLoadedSingleNewsState value)? loadedSingleNews,
    TResult Function(_HomeLoadedSinglePaymentState value)? loadedSinglePayment,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeErrorState implements HomeState {
  const factory _HomeErrorState() = _$_HomeErrorState;
}
