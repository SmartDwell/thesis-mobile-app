// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_cancel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCancelDto _$$_RequestCancelDtoFromJson(Map<String, dynamic> json) =>
    _$_RequestCancelDto(
      state: $enumDecodeNullable(_$RequestStatesEnumMap, json['state']) ??
          RequestStates.CancelledByResident,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$_RequestCancelDtoToJson(_$_RequestCancelDto instance) =>
    <String, dynamic>{
      'state': _$RequestStatesEnumMap[instance.state]!,
      'comment': instance.comment,
    };

const _$RequestStatesEnumMap = {
  RequestStates.New: 0,
  RequestStates.InProgress: 1,
  RequestStates.Completed: 2,
  RequestStates.UnderCompletion: 3,
  RequestStates.CancelledByResident: 4,
  RequestStates.RejectedByDispatcher: 5,
};
