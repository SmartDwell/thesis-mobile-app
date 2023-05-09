// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestStatusDto _$RequestStatusDtoFromJson(Map<String, dynamic> json) {
  return _RequestStatusDto.fromJson(json);
}

/// @nodoc
mixin _$RequestStatusDto {
  RequestStates get state => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestStatusDtoCopyWith<RequestStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStatusDtoCopyWith<$Res> {
  factory $RequestStatusDtoCopyWith(
          RequestStatusDto value, $Res Function(RequestStatusDto) then) =
      _$RequestStatusDtoCopyWithImpl<$Res, RequestStatusDto>;
  @useResult
  $Res call({RequestStates state, String comment, DateTime created});
}

/// @nodoc
class _$RequestStatusDtoCopyWithImpl<$Res, $Val extends RequestStatusDto>
    implements $RequestStatusDtoCopyWith<$Res> {
  _$RequestStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestStates,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestStatusDtoCopyWith<$Res>
    implements $RequestStatusDtoCopyWith<$Res> {
  factory _$$_RequestStatusDtoCopyWith(
          _$_RequestStatusDto value, $Res Function(_$_RequestStatusDto) then) =
      __$$_RequestStatusDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStates state, String comment, DateTime created});
}

/// @nodoc
class __$$_RequestStatusDtoCopyWithImpl<$Res>
    extends _$RequestStatusDtoCopyWithImpl<$Res, _$_RequestStatusDto>
    implements _$$_RequestStatusDtoCopyWith<$Res> {
  __$$_RequestStatusDtoCopyWithImpl(
      _$_RequestStatusDto _value, $Res Function(_$_RequestStatusDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
    Object? created = null,
  }) {
    return _then(_$_RequestStatusDto(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestStates,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestStatusDto extends _RequestStatusDto {
  const _$_RequestStatusDto(
      {required this.state, required this.comment, required this.created})
      : super._();

  factory _$_RequestStatusDto.fromJson(Map<String, dynamic> json) =>
      _$$_RequestStatusDtoFromJson(json);

  @override
  final RequestStates state;
  @override
  final String comment;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'RequestStatusDto(state: $state, comment: $comment, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestStatusDto &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, comment, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestStatusDtoCopyWith<_$_RequestStatusDto> get copyWith =>
      __$$_RequestStatusDtoCopyWithImpl<_$_RequestStatusDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestStatusDtoToJson(
      this,
    );
  }
}

abstract class _RequestStatusDto extends RequestStatusDto {
  const factory _RequestStatusDto(
      {required final RequestStates state,
      required final String comment,
      required final DateTime created}) = _$_RequestStatusDto;
  const _RequestStatusDto._() : super._();

  factory _RequestStatusDto.fromJson(Map<String, dynamic> json) =
      _$_RequestStatusDto.fromJson;

  @override
  RequestStates get state;
  @override
  String get comment;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_RequestStatusDtoCopyWith<_$_RequestStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}
