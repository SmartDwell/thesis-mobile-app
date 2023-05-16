import 'package:freezed_annotation/freezed_annotation.dart';

part 'door_dto.freezed.dart';
part 'door_dto.g.dart';

/// Модель двери
@freezed
class DoorDto with _$DoorDto {
  const factory DoorDto({
    required String id,
    required String name,
    required String title,
    required num x,
    required num y,
  }) = _DoorDto;

  factory DoorDto.fromJson(Map<String, dynamic> json) =>
      _$DoorDtoFromJson(json);
}
