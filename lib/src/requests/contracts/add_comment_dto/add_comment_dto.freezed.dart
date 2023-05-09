// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCommentDto _$AddCommentDtoFromJson(Map<String, dynamic> json) {
  return _AddCommentDto.fromJson(json);
}

/// @nodoc
mixin _$AddCommentDto {
  String get text => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCommentDtoCopyWith<AddCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentDtoCopyWith<$Res> {
  factory $AddCommentDtoCopyWith(
          AddCommentDto value, $Res Function(AddCommentDto) then) =
      _$AddCommentDtoCopyWithImpl<$Res, AddCommentDto>;
  @useResult
  $Res call({String text, List<String> images});
}

/// @nodoc
class _$AddCommentDtoCopyWithImpl<$Res, $Val extends AddCommentDto>
    implements $AddCommentDtoCopyWith<$Res> {
  _$AddCommentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? images = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCommentDtoCopyWith<$Res>
    implements $AddCommentDtoCopyWith<$Res> {
  factory _$$_AddCommentDtoCopyWith(
          _$_AddCommentDto value, $Res Function(_$_AddCommentDto) then) =
      __$$_AddCommentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, List<String> images});
}

/// @nodoc
class __$$_AddCommentDtoCopyWithImpl<$Res>
    extends _$AddCommentDtoCopyWithImpl<$Res, _$_AddCommentDto>
    implements _$$_AddCommentDtoCopyWith<$Res> {
  __$$_AddCommentDtoCopyWithImpl(
      _$_AddCommentDto _value, $Res Function(_$_AddCommentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? images = null,
  }) {
    return _then(_$_AddCommentDto(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddCommentDto implements _AddCommentDto {
  const _$_AddCommentDto(
      {required this.text, required final List<String> images})
      : _images = images;

  factory _$_AddCommentDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddCommentDtoFromJson(json);

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
  String toString() {
    return 'AddCommentDto(text: $text, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCommentDto &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCommentDtoCopyWith<_$_AddCommentDto> get copyWith =>
      __$$_AddCommentDtoCopyWithImpl<_$_AddCommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCommentDtoToJson(
      this,
    );
  }
}

abstract class _AddCommentDto implements AddCommentDto {
  const factory _AddCommentDto(
      {required final String text,
      required final List<String> images}) = _$_AddCommentDto;

  factory _AddCommentDto.fromJson(Map<String, dynamic> json) =
      _$_AddCommentDto.fromJson;

  @override
  String get text;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$_AddCommentDtoCopyWith<_$_AddCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
