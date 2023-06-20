// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_completed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthCompletedDto _$$_AuthCompletedDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthCompletedDto(
      tokens: TokensDto.fromJson(json['tokens'] as Map<String, dynamic>),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthCompletedDtoToJson(_$_AuthCompletedDto instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'user': instance.user,
    };
