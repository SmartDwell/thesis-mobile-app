import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_edit_dto.freezed.dart';
part 'request_edit_dto.g.dart';

/// Модель для редактирования заявки
@freezed
class RequestEditDto with _$RequestEditDto {
  const factory RequestEditDto({
    required String title,
    required String description,
  }) = _RequestEditDto;

  factory RequestEditDto.fromJson(Map<String, dynamic> json) =>
      _$RequestEditDtoFromJson(json);
}
