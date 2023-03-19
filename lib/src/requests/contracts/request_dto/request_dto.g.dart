// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestDto _$$_RequestDtoFromJson(Map<String, dynamic> json) =>
    _$_RequestDto(
      id: json['id'] as String,
      number: json['number'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      created: DateTime.parse(json['created'] as String),
      incidentPointList: (json['incidentPointList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      incidentPointListAsString: json['incidentPointListAsString'] as String,
      currentState: $enumDecode(_$RequestStatesEnumMap, json['currentState']),
    );

Map<String, dynamic> _$$_RequestDtoToJson(_$_RequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'created': instance.created.toIso8601String(),
      'incidentPointList': instance.incidentPointList,
      'incidentPointListAsString': instance.incidentPointListAsString,
      'currentState': _$RequestStatesEnumMap[instance.currentState]!,
    };

const _$RequestStatesEnumMap = {
  RequestStates.New: 0,
  RequestStates.InProgress: 1,
  RequestStates.Completed: 2,
  RequestStates.UnderCompletion: 3,
  RequestStates.CancelledByResident: 4,
  RequestStates.RejectedByDispatcher: 5,
};
