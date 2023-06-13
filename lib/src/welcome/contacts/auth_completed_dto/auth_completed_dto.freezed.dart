// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_completed_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthCompletedDto _$AuthCompletedDtoFromJson(Map<String, dynamic> json) {
  return _AuthCompletedDto.fromJson(json);
}

/// @nodoc
mixin _$AuthCompletedDto {
  TokensDto get tokens => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCompletedDtoCopyWith<AuthCompletedDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCompletedDtoCopyWith<$Res> {
  factory $AuthCompletedDtoCopyWith(
          AuthCompletedDto value, $Res Function(AuthCompletedDto) then) =
      _$AuthCompletedDtoCopyWithImpl<$Res, AuthCompletedDto>;
  @useResult
  $Res call({TokensDto tokens, UserDto user});

  $TokensDtoCopyWith<$Res> get tokens;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthCompletedDtoCopyWithImpl<$Res, $Val extends AuthCompletedDto>
    implements $AuthCompletedDtoCopyWith<$Res> {
  _$AuthCompletedDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as TokensDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokensDtoCopyWith<$Res> get tokens {
    return $TokensDtoCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthCompletedDtoCopyWith<$Res>
    implements $AuthCompletedDtoCopyWith<$Res> {
  factory _$$_AuthCompletedDtoCopyWith(
          _$_AuthCompletedDto value, $Res Function(_$_AuthCompletedDto) then) =
      __$$_AuthCompletedDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokensDto tokens, UserDto user});

  @override
  $TokensDtoCopyWith<$Res> get tokens;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthCompletedDtoCopyWithImpl<$Res>
    extends _$AuthCompletedDtoCopyWithImpl<$Res, _$_AuthCompletedDto>
    implements _$$_AuthCompletedDtoCopyWith<$Res> {
  __$$_AuthCompletedDtoCopyWithImpl(
      _$_AuthCompletedDto _value, $Res Function(_$_AuthCompletedDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? user = null,
  }) {
    return _then(_$_AuthCompletedDto(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as TokensDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthCompletedDto implements _AuthCompletedDto {
  const _$_AuthCompletedDto({required this.tokens, required this.user});

  factory _$_AuthCompletedDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthCompletedDtoFromJson(json);

  @override
  final TokensDto tokens;
  @override
  final UserDto user;

  @override
  String toString() {
    return 'AuthCompletedDto(tokens: $tokens, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthCompletedDto &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthCompletedDtoCopyWith<_$_AuthCompletedDto> get copyWith =>
      __$$_AuthCompletedDtoCopyWithImpl<_$_AuthCompletedDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthCompletedDtoToJson(
      this,
    );
  }
}

abstract class _AuthCompletedDto implements AuthCompletedDto {
  const factory _AuthCompletedDto(
      {required final TokensDto tokens,
      required final UserDto user}) = _$_AuthCompletedDto;

  factory _AuthCompletedDto.fromJson(Map<String, dynamic> json) =
      _$_AuthCompletedDto.fromJson;

  @override
  TokensDto get tokens;
  @override
  UserDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCompletedDtoCopyWith<_$_AuthCompletedDto> get copyWith =>
      throw _privateConstructorUsedError;
}
