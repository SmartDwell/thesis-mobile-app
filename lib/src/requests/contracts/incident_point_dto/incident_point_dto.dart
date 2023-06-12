import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident_point_dto.freezed.dart';
part 'incident_point_dto.g.dart';

/// Модель для точки инцидента
@freezed
class IncidentPointDto with _$IncidentPointDto {
  const factory IncidentPointDto({
    required String id,
    required String name,
    required List<IncidentPointDto> children,
  }) = _IncidentPointDto;

  factory IncidentPointDto.fromJson(Map<String, dynamic> json) =>
      _$IncidentPointDtoFromJson(json);
}
