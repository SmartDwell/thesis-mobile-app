import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_comment_dto.freezed.dart';
part 'request_comment_dto.g.dart';

@freezed
class RequestCommentDto with _$RequestCommentDto {
  const factory RequestCommentDto({
    required String text,
    required List<String> images,
    required String creatorName,
    required DateTime created,
  }) = _RequestCommentDto;

  factory RequestCommentDto.fromJson(Map<String, dynamic> json) =>
      _$RequestCommentDtoFromJson(json);
}
