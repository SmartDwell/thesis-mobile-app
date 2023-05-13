// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDto {
  String get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  List<PaymentDetailsDto> get details => throw _privateConstructorUsedError;
  DateTime get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDtoCopyWith<PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res, PaymentDto>;
  @useResult
  $Res call(
      {String id,
      String location,
      bool isPaid,
      List<PaymentDetailsDto> details,
      DateTime period});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res, $Val extends PaymentDto>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? isPaid = null,
    Object? details = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<PaymentDetailsDto>,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDtoCopyWith<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  factory _$$_PaymentDtoCopyWith(
          _$_PaymentDto value, $Res Function(_$_PaymentDto) then) =
      __$$_PaymentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String location,
      bool isPaid,
      List<PaymentDetailsDto> details,
      DateTime period});
}

/// @nodoc
class __$$_PaymentDtoCopyWithImpl<$Res>
    extends _$PaymentDtoCopyWithImpl<$Res, _$_PaymentDto>
    implements _$$_PaymentDtoCopyWith<$Res> {
  __$$_PaymentDtoCopyWithImpl(
      _$_PaymentDto _value, $Res Function(_$_PaymentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? isPaid = null,
    Object? details = null,
    Object? period = null,
  }) {
    return _then(_$_PaymentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<PaymentDetailsDto>,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDto extends _PaymentDto {
  const _$_PaymentDto(
      {required this.id,
      required this.location,
      required this.isPaid,
      required final List<PaymentDetailsDto> details,
      required this.period})
      : _details = details,
        super._();

  factory _$_PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDtoFromJson(json);

  @override
  final String id;
  @override
  final String location;
  @override
  final bool isPaid;
  final List<PaymentDetailsDto> _details;
  @override
  List<PaymentDetailsDto> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  final DateTime period;

  @override
  String toString() {
    return 'PaymentDto(id: $id, location: $location, isPaid: $isPaid, details: $details, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, location, isPaid,
      const DeepCollectionEquality().hash(_details), period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      __$$_PaymentDtoCopyWithImpl<_$_PaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDtoToJson(
      this,
    );
  }
}

abstract class _PaymentDto extends PaymentDto {
  const factory _PaymentDto(
      {required final String id,
      required final String location,
      required final bool isPaid,
      required final List<PaymentDetailsDto> details,
      required final DateTime period}) = _$_PaymentDto;
  const _PaymentDto._() : super._();

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDto.fromJson;

  @override
  String get id;
  @override
  String get location;
  @override
  bool get isPaid;
  @override
  List<PaymentDetailsDto> get details;
  @override
  DateTime get period;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
