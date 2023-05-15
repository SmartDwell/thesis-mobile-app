import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

/// Модель новости
@freezed
class NewsDto with _$NewsDto {
  const factory NewsDto({
    required String id,
    required String title,
    required String description,
    required List<String> images,
    required DateTime created,
  }) = _NewsDto;

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);
}
