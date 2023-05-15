// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return _NewsDto.fromJson(json);
}

/// @nodoc
mixin _$NewsDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res, NewsDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<String> images,
      DateTime created});
}

/// @nodoc
class _$NewsDtoCopyWithImpl<$Res, $Val extends NewsDto>
    implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDtoCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$$_NewsDtoCopyWith(
          _$_NewsDto value, $Res Function(_$_NewsDto) then) =
      __$$_NewsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<String> images,
      DateTime created});
}

/// @nodoc
class __$$_NewsDtoCopyWithImpl<$Res>
    extends _$NewsDtoCopyWithImpl<$Res, _$_NewsDto>
    implements _$$_NewsDtoCopyWith<$Res> {
  __$$_NewsDtoCopyWithImpl(_$_NewsDto _value, $Res Function(_$_NewsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? created = null,
  }) {
    return _then(_$_NewsDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDto implements _NewsDto {
  const _$_NewsDto(
      {required this.id,
      required this.title,
      required this.description,
      required final List<String> images,
      required this.created})
      : _images = images;

  factory _$_NewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final DateTime created;

  @override
  String toString() {
    return 'NewsDto(id: $id, title: $title, description: $description, images: $images, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_images), created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDtoCopyWith<_$_NewsDto> get copyWith =>
      __$$_NewsDtoCopyWithImpl<_$_NewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDtoToJson(
      this,
    );
  }
}

abstract class _NewsDto implements NewsDto {
  const factory _NewsDto(
      {required final String id,
      required final String title,
      required final String description,
      required final List<String> images,
      required final DateTime created}) = _$_NewsDto;

  factory _NewsDto.fromJson(Map<String, dynamic> json) = _$_NewsDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDtoCopyWith<_$_NewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
