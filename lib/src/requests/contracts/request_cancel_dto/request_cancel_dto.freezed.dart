// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_cancel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCancelDto _$RequestCancelDtoFromJson(Map<String, dynamic> json) {
  return _RequestCancelDto.fromJson(json);
}

/// @nodoc
mixin _$RequestCancelDto {
  RequestStates get state => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCancelDtoCopyWith<RequestCancelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCancelDtoCopyWith<$Res> {
  factory $RequestCancelDtoCopyWith(
          RequestCancelDto value, $Res Function(RequestCancelDto) then) =
      _$RequestCancelDtoCopyWithImpl<$Res, RequestCancelDto>;
  @useResult
  $Res call({RequestStates state, String comment});
}

/// @nodoc
class _$RequestCancelDtoCopyWithImpl<$Res, $Val extends RequestCancelDto>
    implements $RequestCancelDtoCopyWith<$Res> {
  _$RequestCancelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestCancelDtoCopyWith<$Res>
    implements $RequestCancelDtoCopyWith<$Res> {
  factory _$$_RequestCancelDtoCopyWith(
          _$_RequestCancelDto value, $Res Function(_$_RequestCancelDto) then) =
      __$$_RequestCancelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStates state, String comment});
}

/// @nodoc
class __$$_RequestCancelDtoCopyWithImpl<$Res>
    extends _$RequestCancelDtoCopyWithImpl<$Res, _$_RequestCancelDto>
    implements _$$_RequestCancelDtoCopyWith<$Res> {
  __$$_RequestCancelDtoCopyWithImpl(
      _$_RequestCancelDto _value, $Res Function(_$_RequestCancelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? comment = null,
  }) {
    return _then(_$_RequestCancelDto(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestStates,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCancelDto implements _RequestCancelDto {
  const _$_RequestCancelDto(
      {this.state = RequestStates.CancelledByResident, required this.comment});

  factory _$_RequestCancelDto.fromJson(Map<String, dynamic> json) =>
      _$$_RequestCancelDtoFromJson(json);

  @override
  @JsonKey()
  final RequestStates state;
  @override
  final String comment;

  @override
  String toString() {
    return 'RequestCancelDto(state: $state, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCancelDto &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCancelDtoCopyWith<_$_RequestCancelDto> get copyWith =>
      __$$_RequestCancelDtoCopyWithImpl<_$_RequestCancelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestCancelDtoToJson(
      this,
    );
  }
}

abstract class _RequestCancelDto implements RequestCancelDto {
  const factory _RequestCancelDto(
      {final RequestStates state,
      required final String comment}) = _$_RequestCancelDto;

  factory _RequestCancelDto.fromJson(Map<String, dynamic> json) =
      _$_RequestCancelDto.fromJson;

  @override
  RequestStates get state;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCancelDtoCopyWith<_$_RequestCancelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
