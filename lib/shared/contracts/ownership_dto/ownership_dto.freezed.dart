// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ownership_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnershipDto _$OwnershipDtoFromJson(Map<String, dynamic> json) {
  return _OwnershipDto.fromJson(json);
}

/// @nodoc
mixin _$OwnershipDto {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get apartmentId => throw _privateConstructorUsedError;
  OwnershipRelationType get relationType => throw _privateConstructorUsedError;
  String get complexName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnershipDtoCopyWith<OwnershipDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnershipDtoCopyWith<$Res> {
  factory $OwnershipDtoCopyWith(
          OwnershipDto value, $Res Function(OwnershipDto) then) =
      _$OwnershipDtoCopyWithImpl<$Res, OwnershipDto>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String apartmentId,
      OwnershipRelationType relationType,
      String complexName,
      String address});
}

/// @nodoc
class _$OwnershipDtoCopyWithImpl<$Res, $Val extends OwnershipDto>
    implements $OwnershipDtoCopyWith<$Res> {
  _$OwnershipDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? apartmentId = null,
    Object? relationType = null,
    Object? complexName = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentId: null == apartmentId
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      relationType: null == relationType
          ? _value.relationType
          : relationType // ignore: cast_nullable_to_non_nullable
              as OwnershipRelationType,
      complexName: null == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnershipDtoCopyWith<$Res>
    implements $OwnershipDtoCopyWith<$Res> {
  factory _$$_OwnershipDtoCopyWith(
          _$_OwnershipDto value, $Res Function(_$_OwnershipDto) then) =
      __$$_OwnershipDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String apartmentId,
      OwnershipRelationType relationType,
      String complexName,
      String address});
}

/// @nodoc
class __$$_OwnershipDtoCopyWithImpl<$Res>
    extends _$OwnershipDtoCopyWithImpl<$Res, _$_OwnershipDto>
    implements _$$_OwnershipDtoCopyWith<$Res> {
  __$$_OwnershipDtoCopyWithImpl(
      _$_OwnershipDto _value, $Res Function(_$_OwnershipDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? apartmentId = null,
    Object? relationType = null,
    Object? complexName = null,
    Object? address = null,
  }) {
    return _then(_$_OwnershipDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentId: null == apartmentId
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      relationType: null == relationType
          ? _value.relationType
          : relationType // ignore: cast_nullable_to_non_nullable
              as OwnershipRelationType,
      complexName: null == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnershipDto implements _OwnershipDto {
  const _$_OwnershipDto(
      {required this.id,
      required this.userId,
      required this.apartmentId,
      required this.relationType,
      required this.complexName,
      required this.address});

  factory _$_OwnershipDto.fromJson(Map<String, dynamic> json) =>
      _$$_OwnershipDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String apartmentId;
  @override
  final OwnershipRelationType relationType;
  @override
  final String complexName;
  @override
  final String address;

  @override
  String toString() {
    return 'OwnershipDto(id: $id, userId: $userId, apartmentId: $apartmentId, relationType: $relationType, complexName: $complexName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnershipDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.apartmentId, apartmentId) ||
                other.apartmentId == apartmentId) &&
            (identical(other.relationType, relationType) ||
                other.relationType == relationType) &&
            (identical(other.complexName, complexName) ||
                other.complexName == complexName) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, apartmentId, relationType, complexName, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnershipDtoCopyWith<_$_OwnershipDto> get copyWith =>
      __$$_OwnershipDtoCopyWithImpl<_$_OwnershipDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnershipDtoToJson(
      this,
    );
  }
}

abstract class _OwnershipDto implements OwnershipDto {
  const factory _OwnershipDto(
      {required final String id,
      required final String userId,
      required final String apartmentId,
      required final OwnershipRelationType relationType,
      required final String complexName,
      required final String address}) = _$_OwnershipDto;

  factory _OwnershipDto.fromJson(Map<String, dynamic> json) =
      _$_OwnershipDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get apartmentId;
  @override
  OwnershipRelationType get relationType;
  @override
  String get complexName;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_OwnershipDtoCopyWith<_$_OwnershipDto> get copyWith =>
      throw _privateConstructorUsedError;
}
