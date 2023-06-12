// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDto _$RequestDtoFromJson(Map<String, dynamic> json) {
  return _RequestDto.fromJson(json);
}

/// @nodoc
mixin _$RequestDto {
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get incidentPointId => throw _privateConstructorUsedError;
  String get incidentPointFullName => throw _privateConstructorUsedError;
  bool get isEdited => throw _privateConstructorUsedError;
  RequestStates get currentState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDtoCopyWith<RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDtoCopyWith<$Res> {
  factory $RequestDtoCopyWith(
          RequestDto value, $Res Function(RequestDto) then) =
      _$RequestDtoCopyWithImpl<$Res, RequestDto>;
  @useResult
  $Res call(
      {String id,
      int number,
      String title,
      String description,
      List<String> images,
      DateTime created,
      String incidentPointId,
      String incidentPointFullName,
      bool isEdited,
      RequestStates currentState});
}

/// @nodoc
class _$RequestDtoCopyWithImpl<$Res, $Val extends RequestDto>
    implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? created = null,
    Object? incidentPointId = null,
    Object? incidentPointFullName = null,
    Object? isEdited = null,
    Object? currentState = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
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
      incidentPointId: null == incidentPointId
          ? _value.incidentPointId
          : incidentPointId // ignore: cast_nullable_to_non_nullable
              as String,
      incidentPointFullName: null == incidentPointFullName
          ? _value.incidentPointFullName
          : incidentPointFullName // ignore: cast_nullable_to_non_nullable
              as String,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as RequestStates,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestDtoCopyWith<$Res>
    implements $RequestDtoCopyWith<$Res> {
  factory _$$_RequestDtoCopyWith(
          _$_RequestDto value, $Res Function(_$_RequestDto) then) =
      __$$_RequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int number,
      String title,
      String description,
      List<String> images,
      DateTime created,
      String incidentPointId,
      String incidentPointFullName,
      bool isEdited,
      RequestStates currentState});
}

/// @nodoc
class __$$_RequestDtoCopyWithImpl<$Res>
    extends _$RequestDtoCopyWithImpl<$Res, _$_RequestDto>
    implements _$$_RequestDtoCopyWith<$Res> {
  __$$_RequestDtoCopyWithImpl(
      _$_RequestDto _value, $Res Function(_$_RequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? created = null,
    Object? incidentPointId = null,
    Object? incidentPointFullName = null,
    Object? isEdited = null,
    Object? currentState = null,
  }) {
    return _then(_$_RequestDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
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
      incidentPointId: null == incidentPointId
          ? _value.incidentPointId
          : incidentPointId // ignore: cast_nullable_to_non_nullable
              as String,
      incidentPointFullName: null == incidentPointFullName
          ? _value.incidentPointFullName
          : incidentPointFullName // ignore: cast_nullable_to_non_nullable
              as String,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as RequestStates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDto extends _RequestDto {
  const _$_RequestDto(
      {required this.id,
      required this.number,
      required this.title,
      required this.description,
      required final List<String> images,
      required this.created,
      required this.incidentPointId,
      required this.incidentPointFullName,
      required this.isEdited,
      required this.currentState})
      : _images = images,
        super._();

  factory _$_RequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_RequestDtoFromJson(json);

  @override
  final String id;
  @override
  final int number;
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
  final String incidentPointId;
  @override
  final String incidentPointFullName;
  @override
  final bool isEdited;
  @override
  final RequestStates currentState;

  @override
  String toString() {
    return 'RequestDto(id: $id, number: $number, title: $title, description: $description, images: $images, created: $created, incidentPointId: $incidentPointId, incidentPointFullName: $incidentPointFullName, isEdited: $isEdited, currentState: $currentState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.incidentPointId, incidentPointId) ||
                other.incidentPointId == incidentPointId) &&
            (identical(other.incidentPointFullName, incidentPointFullName) ||
                other.incidentPointFullName == incidentPointFullName) &&
            (identical(other.isEdited, isEdited) ||
                other.isEdited == isEdited) &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      number,
      title,
      description,
      const DeepCollectionEquality().hash(_images),
      created,
      incidentPointId,
      incidentPointFullName,
      isEdited,
      currentState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestDtoCopyWith<_$_RequestDto> get copyWith =>
      __$$_RequestDtoCopyWithImpl<_$_RequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestDtoToJson(
      this,
    );
  }
}

abstract class _RequestDto extends RequestDto {
  const factory _RequestDto(
      {required final String id,
      required final int number,
      required final String title,
      required final String description,
      required final List<String> images,
      required final DateTime created,
      required final String incidentPointId,
      required final String incidentPointFullName,
      required final bool isEdited,
      required final RequestStates currentState}) = _$_RequestDto;
  const _RequestDto._() : super._();

  factory _RequestDto.fromJson(Map<String, dynamic> json) =
      _$_RequestDto.fromJson;

  @override
  String get id;
  @override
  int get number;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  DateTime get created;
  @override
  String get incidentPointId;
  @override
  String get incidentPointFullName;
  @override
  bool get isEdited;
  @override
  RequestStates get currentState;
  @override
  @JsonKey(ignore: true)
  _$$_RequestDtoCopyWith<_$_RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
