// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddRequestDto _$AddRequestDtoFromJson(Map<String, dynamic> json) {
  return _AddRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AddRequestDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get incidentPointList => throw _privateConstructorUsedError;
  String get incidentPointListAsString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRequestDtoCopyWith<AddRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRequestDtoCopyWith<$Res> {
  factory $AddRequestDtoCopyWith(
          AddRequestDto value, $Res Function(AddRequestDto) then) =
      _$AddRequestDtoCopyWithImpl<$Res, AddRequestDto>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<String> images,
      List<String> incidentPointList,
      String incidentPointListAsString});
}

/// @nodoc
class _$AddRequestDtoCopyWithImpl<$Res, $Val extends AddRequestDto>
    implements $AddRequestDtoCopyWith<$Res> {
  _$AddRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? incidentPointList = null,
    Object? incidentPointListAsString = null,
  }) {
    return _then(_value.copyWith(
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
      incidentPointList: null == incidentPointList
          ? _value.incidentPointList
          : incidentPointList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incidentPointListAsString: null == incidentPointListAsString
          ? _value.incidentPointListAsString
          : incidentPointListAsString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddRequestDtoCopyWith<$Res>
    implements $AddRequestDtoCopyWith<$Res> {
  factory _$$_AddRequestDtoCopyWith(
          _$_AddRequestDto value, $Res Function(_$_AddRequestDto) then) =
      __$$_AddRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<String> images,
      List<String> incidentPointList,
      String incidentPointListAsString});
}

/// @nodoc
class __$$_AddRequestDtoCopyWithImpl<$Res>
    extends _$AddRequestDtoCopyWithImpl<$Res, _$_AddRequestDto>
    implements _$$_AddRequestDtoCopyWith<$Res> {
  __$$_AddRequestDtoCopyWithImpl(
      _$_AddRequestDto _value, $Res Function(_$_AddRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? incidentPointList = null,
    Object? incidentPointListAsString = null,
  }) {
    return _then(_$_AddRequestDto(
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
      incidentPointList: null == incidentPointList
          ? _value._incidentPointList
          : incidentPointList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incidentPointListAsString: null == incidentPointListAsString
          ? _value.incidentPointListAsString
          : incidentPointListAsString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddRequestDto implements _AddRequestDto {
  const _$_AddRequestDto(
      {required this.title,
      required this.description,
      required final List<String> images,
      required final List<String> incidentPointList,
      required this.incidentPointListAsString})
      : _images = images,
        _incidentPointList = incidentPointList;

  factory _$_AddRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddRequestDtoFromJson(json);

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

  final List<String> _incidentPointList;
  @override
  List<String> get incidentPointList {
    if (_incidentPointList is EqualUnmodifiableListView)
      return _incidentPointList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incidentPointList);
  }

  @override
  final String incidentPointListAsString;

  @override
  String toString() {
    return 'AddRequestDto(title: $title, description: $description, images: $images, incidentPointList: $incidentPointList, incidentPointListAsString: $incidentPointListAsString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRequestDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._incidentPointList, _incidentPointList) &&
            (identical(other.incidentPointListAsString,
                    incidentPointListAsString) ||
                other.incidentPointListAsString == incidentPointListAsString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_incidentPointList),
      incidentPointListAsString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRequestDtoCopyWith<_$_AddRequestDto> get copyWith =>
      __$$_AddRequestDtoCopyWithImpl<_$_AddRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddRequestDtoToJson(
      this,
    );
  }
}

abstract class _AddRequestDto implements AddRequestDto {
  const factory _AddRequestDto(
      {required final String title,
      required final String description,
      required final List<String> images,
      required final List<String> incidentPointList,
      required final String incidentPointListAsString}) = _$_AddRequestDto;

  factory _AddRequestDto.fromJson(Map<String, dynamic> json) =
      _$_AddRequestDto.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  List<String> get incidentPointList;
  @override
  String get incidentPointListAsString;
  @override
  @JsonKey(ignore: true)
  _$$_AddRequestDtoCopyWith<_$_AddRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
