// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCommentDto _$$_RequestCommentDtoFromJson(Map<String, dynamic> json) =>
    _$_RequestCommentDto(
      text: json['text'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      creatorName: json['creatorName'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_RequestCommentDtoToJson(
        _$_RequestCommentDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
      'creatorName': instance.creatorName,
      'created': instance.created.toIso8601String(),
    };
