import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_request_dto.freezed.dart';
part 'add_request_dto.g.dart';

/// Модель для добавления заявки
@freezed
class AddRequestDto with _$AddRequestDto {
  const factory AddRequestDto({
    required String title,
    required String description,
    required List<String> images,
    required String incidentPointId,
    required String incidentPointFullName,
  }) = _AddRequestDto;

  factory AddRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AddRequestDtoFromJson(json);
}
