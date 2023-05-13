// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDetailsDto _$PaymentDetailsDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetailsDto {
  String get name => throw _privateConstructorUsedError;
  double get summa => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsDtoCopyWith<PaymentDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsDtoCopyWith<$Res> {
  factory $PaymentDetailsDtoCopyWith(
          PaymentDetailsDto value, $Res Function(PaymentDetailsDto) then) =
      _$PaymentDetailsDtoCopyWithImpl<$Res, PaymentDetailsDto>;
  @useResult
  $Res call({String name, double summa});
}

/// @nodoc
class _$PaymentDetailsDtoCopyWithImpl<$Res, $Val extends PaymentDetailsDto>
    implements $PaymentDetailsDtoCopyWith<$Res> {
  _$PaymentDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? summa = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summa: null == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDetailsDtoCopyWith<$Res>
    implements $PaymentDetailsDtoCopyWith<$Res> {
  factory _$$_PaymentDetailsDtoCopyWith(_$_PaymentDetailsDto value,
          $Res Function(_$_PaymentDetailsDto) then) =
      __$$_PaymentDetailsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double summa});
}

/// @nodoc
class __$$_PaymentDetailsDtoCopyWithImpl<$Res>
    extends _$PaymentDetailsDtoCopyWithImpl<$Res, _$_PaymentDetailsDto>
    implements _$$_PaymentDetailsDtoCopyWith<$Res> {
  __$$_PaymentDetailsDtoCopyWithImpl(
      _$_PaymentDetailsDto _value, $Res Function(_$_PaymentDetailsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? summa = null,
  }) {
    return _then(_$_PaymentDetailsDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summa: null == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDetailsDto implements _PaymentDetailsDto {
  const _$_PaymentDetailsDto({required this.name, required this.summa});

  factory _$_PaymentDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDetailsDtoFromJson(json);

  @override
  final String name;
  @override
  final double summa;

  @override
  String toString() {
    return 'PaymentDetailsDto(name: $name, summa: $summa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDetailsDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.summa, summa) || other.summa == summa));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, summa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDetailsDtoCopyWith<_$_PaymentDetailsDto> get copyWith =>
      __$$_PaymentDetailsDtoCopyWithImpl<_$_PaymentDetailsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDetailsDtoToJson(
      this,
    );
  }
}

abstract class _PaymentDetailsDto implements PaymentDetailsDto {
  const factory _PaymentDetailsDto(
      {required final String name,
      required final double summa}) = _$_PaymentDetailsDto;

  factory _PaymentDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetailsDto.fromJson;

  @override
  String get name;
  @override
  double get summa;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDetailsDtoCopyWith<_$_PaymentDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
