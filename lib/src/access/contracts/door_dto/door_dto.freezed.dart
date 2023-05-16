// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'door_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoorDto _$DoorDtoFromJson(Map<String, dynamic> json) {
  return _DoorDto.fromJson(json);
}

/// @nodoc
mixin _$DoorDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get x => throw _privateConstructorUsedError;
  num get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoorDtoCopyWith<DoorDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoorDtoCopyWith<$Res> {
  factory $DoorDtoCopyWith(DoorDto value, $Res Function(DoorDto) then) =
      _$DoorDtoCopyWithImpl<$Res, DoorDto>;
  @useResult
  $Res call({String id, String name, String title, num x, num y});
}

/// @nodoc
class _$DoorDtoCopyWithImpl<$Res, $Val extends DoorDto>
    implements $DoorDtoCopyWith<$Res> {
  _$DoorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as num,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoorDtoCopyWith<$Res> implements $DoorDtoCopyWith<$Res> {
  factory _$$_DoorDtoCopyWith(
          _$_DoorDto value, $Res Function(_$_DoorDto) then) =
      __$$_DoorDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String title, num x, num y});
}

/// @nodoc
class __$$_DoorDtoCopyWithImpl<$Res>
    extends _$DoorDtoCopyWithImpl<$Res, _$_DoorDto>
    implements _$$_DoorDtoCopyWith<$Res> {
  __$$_DoorDtoCopyWithImpl(_$_DoorDto _value, $Res Function(_$_DoorDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_DoorDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as num,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoorDto implements _DoorDto {
  const _$_DoorDto(
      {required this.id,
      required this.name,
      required this.title,
      required this.x,
      required this.y});

  factory _$_DoorDto.fromJson(Map<String, dynamic> json) =>
      _$$_DoorDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String title;
  @override
  final num x;
  @override
  final num y;

  @override
  String toString() {
    return 'DoorDto(id: $id, name: $name, title: $title, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoorDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, title, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoorDtoCopyWith<_$_DoorDto> get copyWith =>
      __$$_DoorDtoCopyWithImpl<_$_DoorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoorDtoToJson(
      this,
    );
  }
}

abstract class _DoorDto implements DoorDto {
  const factory _DoorDto(
      {required final String id,
      required final String name,
      required final String title,
      required final num x,
      required final num y}) = _$_DoorDto;

  factory _DoorDto.fromJson(Map<String, dynamic> json) = _$_DoorDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get title;
  @override
  num get x;
  @override
  num get y;
  @override
  @JsonKey(ignore: true)
  _$$_DoorDtoCopyWith<_$_DoorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
