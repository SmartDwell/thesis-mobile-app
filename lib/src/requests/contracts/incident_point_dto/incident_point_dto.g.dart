// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IncidentPointDto _$$_IncidentPointDtoFromJson(Map<String, dynamic> json) =>
    _$_IncidentPointDto(
      id: json['id'] as String,
      name: json['name'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => IncidentPointDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IncidentPointDtoToJson(_$_IncidentPointDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'children': instance.children,
    };
