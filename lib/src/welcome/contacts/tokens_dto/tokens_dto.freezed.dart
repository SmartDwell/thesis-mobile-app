// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokens_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokensDto _$TokensDtoFromJson(Map<String, dynamic> json) {
  return _TokensDto.fromJson(json);
}

/// @nodoc
mixin _$TokensDto {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensDtoCopyWith<TokensDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensDtoCopyWith<$Res> {
  factory $TokensDtoCopyWith(TokensDto value, $Res Function(TokensDto) then) =
      _$TokensDtoCopyWithImpl<$Res, TokensDto>;
  @useResult
  $Res call({String accessToken, String refreshToken, String userId});
}

/// @nodoc
class _$TokensDtoCopyWithImpl<$Res, $Val extends TokensDto>
    implements $TokensDtoCopyWith<$Res> {
  _$TokensDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokensDtoCopyWith<$Res> implements $TokensDtoCopyWith<$Res> {
  factory _$$_TokensDtoCopyWith(
          _$_TokensDto value, $Res Function(_$_TokensDto) then) =
      __$$_TokensDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken, String userId});
}

/// @nodoc
class __$$_TokensDtoCopyWithImpl<$Res>
    extends _$TokensDtoCopyWithImpl<$Res, _$_TokensDto>
    implements _$$_TokensDtoCopyWith<$Res> {
  __$$_TokensDtoCopyWithImpl(
      _$_TokensDto _value, $Res Function(_$_TokensDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userId = null,
  }) {
    return _then(_$_TokensDto(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokensDto with DiagnosticableTreeMixin implements _TokensDto {
  const _$_TokensDto(
      {required this.accessToken,
      required this.refreshToken,
      required this.userId});

  factory _$_TokensDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokensDtoFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokensDto(accessToken: $accessToken, refreshToken: $refreshToken, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TokensDto'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokensDto &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokensDtoCopyWith<_$_TokensDto> get copyWith =>
      __$$_TokensDtoCopyWithImpl<_$_TokensDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensDtoToJson(
      this,
    );
  }
}

abstract class _TokensDto implements TokensDto {
  const factory _TokensDto(
      {required final String accessToken,
      required final String refreshToken,
      required final String userId}) = _$_TokensDto;

  factory _TokensDto.fromJson(Map<String, dynamic> json) =
      _$_TokensDto.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TokensDtoCopyWith<_$_TokensDto> get copyWith =>
      throw _privateConstructorUsedError;
}
