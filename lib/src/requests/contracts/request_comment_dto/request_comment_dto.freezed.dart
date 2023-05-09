// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCommentDto _$RequestCommentDtoFromJson(Map<String, dynamic> json) {
  return _RequestCommentDto.fromJson(json);
}

/// @nodoc
mixin _$RequestCommentDto {
  String get text => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCommentDtoCopyWith<RequestCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCommentDtoCopyWith<$Res> {
  factory $RequestCommentDtoCopyWith(
          RequestCommentDto value, $Res Function(RequestCommentDto) then) =
      _$RequestCommentDtoCopyWithImpl<$Res, RequestCommentDto>;
  @useResult
  $Res call(
      {String text, List<String> images, String creatorName, DateTime created});
}

/// @nodoc
class _$RequestCommentDtoCopyWithImpl<$Res, $Val extends RequestCommentDto>
    implements $RequestCommentDtoCopyWith<$Res> {
  _$RequestCommentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? images = null,
    Object? creatorName = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestCommentDtoCopyWith<$Res>
    implements $RequestCommentDtoCopyWith<$Res> {
  factory _$$_RequestCommentDtoCopyWith(_$_RequestCommentDto value,
          $Res Function(_$_RequestCommentDto) then) =
      __$$_RequestCommentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text, List<String> images, String creatorName, DateTime created});
}

/// @nodoc
class __$$_RequestCommentDtoCopyWithImpl<$Res>
    extends _$RequestCommentDtoCopyWithImpl<$Res, _$_RequestCommentDto>
    implements _$$_RequestCommentDtoCopyWith<$Res> {
  __$$_RequestCommentDtoCopyWithImpl(
      _$_RequestCommentDto _value, $Res Function(_$_RequestCommentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? images = null,
    Object? creatorName = null,
    Object? created = null,
  }) {
    return _then(_$_RequestCommentDto(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCommentDto implements _RequestCommentDto {
  const _$_RequestCommentDto(
      {required this.text,
      required final List<String> images,
      required this.creatorName,
      required this.created})
      : _images = images;

  factory _$_RequestCommentDto.fromJson(Map<String, dynamic> json) =>
      _$$_RequestCommentDtoFromJson(json);

  @override
  final String text;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String creatorName;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'RequestCommentDto(text: $text, images: $images, creatorName: $creatorName, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCommentDto &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text,
      const DeepCollectionEquality().hash(_images), creatorName, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCommentDtoCopyWith<_$_RequestCommentDto> get copyWith =>
      __$$_RequestCommentDtoCopyWithImpl<_$_RequestCommentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestCommentDtoToJson(
      this,
    );
  }
}

abstract class _RequestCommentDto implements RequestCommentDto {
  const factory _RequestCommentDto(
      {required final String text,
      required final List<String> images,
      required final String creatorName,
      required final DateTime created}) = _$_RequestCommentDto;

  factory _RequestCommentDto.fromJson(Map<String, dynamic> json) =
      _$_RequestCommentDto.fromJson;

  @override
  String get text;
  @override
  List<String> get images;
  @override
  String get creatorName;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCommentDtoCopyWith<_$_RequestCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
