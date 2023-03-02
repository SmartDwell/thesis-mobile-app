import 'package:freezed_annotation/freezed_annotation.dart';

import '../../widgets/request_states.dart';

part 'request_dto.freezed.dart';
part 'request_dto.g.dart';

@freezed
class RequestDto with _$RequestDto {
  const factory RequestDto({
    required String id,
    required int number,
    required String title,
    required String description,
    required List<String> images,
    required DateTime created,
    required List<String> incidentPointList,
    required String incidentPointListAsString,
    required RequestStates currentState,
  }) = _RequestDto;

  factory RequestDto.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoFromJson(json);
}
