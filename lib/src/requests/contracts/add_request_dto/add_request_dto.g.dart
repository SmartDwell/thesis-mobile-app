// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddRequestDto _$$_AddRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_AddRequestDto(
      title: json['title'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      incidentPointId: json['incidentPointId'] as String,
      incidentPointFullName: json['incidentPointFullName'] as String,
    );

Map<String, dynamic> _$$_AddRequestDtoToJson(_$_AddRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'incidentPointId': instance.incidentPointId,
      'incidentPointFullName': instance.incidentPointFullName,
    };
