// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestStatusDto _$$_RequestStatusDtoFromJson(Map<String, dynamic> json) =>
    _$_RequestStatusDto(
      state: $enumDecode(_$RequestStatesEnumMap, json['state']),
      comment: json['comment'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_RequestStatusDtoToJson(_$_RequestStatusDto instance) =>
    <String, dynamic>{
      'state': _$RequestStatesEnumMap[instance.state]!,
      'comment': instance.comment,
      'created': instance.created.toIso8601String(),
    };

const _$RequestStatesEnumMap = {
  RequestStates.New: 0,
  RequestStates.InProgress: 1,
  RequestStates.Completed: 2,
  RequestStates.UnderCompletion: 3,
  RequestStates.CancelledByResident: 4,
  RequestStates.RejectedByDispatcher: 5,
};
