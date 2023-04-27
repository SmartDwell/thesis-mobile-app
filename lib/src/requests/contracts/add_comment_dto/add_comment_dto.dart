import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_comment_dto.freezed.dart';

@freezed
class AddCommentDto with _$AddCommentDto {
  const factory AddCommentDto({
    required String requestId,
    required String text,
    required List<String> images,
  }) = _AddCommentDto;
}
