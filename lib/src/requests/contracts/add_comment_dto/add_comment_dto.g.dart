// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddCommentDto _$$_AddCommentDtoFromJson(Map<String, dynamic> json) =>
    _$_AddCommentDto(
      text: json['text'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AddCommentDtoToJson(_$_AddCommentDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };
