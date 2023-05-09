import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_comment_dto.freezed.dart';
part 'add_comment_dto.g.dart';

/// Модель для добавления комментария
@freezed
class AddCommentDto with _$AddCommentDto {
  const factory AddCommentDto({
    required String text,
    required List<String> images,
  }) = _AddCommentDto;

  factory AddCommentDto.fromJson(Map<String, dynamic> json) =>
      _$AddCommentDtoFromJson(json);
}
