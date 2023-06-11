// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incident_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IncidentPointDto _$IncidentPointDtoFromJson(Map<String, dynamic> json) {
  return _IncidentPointDto.fromJson(json);
}

/// @nodoc
mixin _$IncidentPointDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IncidentPointDto> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncidentPointDtoCopyWith<IncidentPointDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidentPointDtoCopyWith<$Res> {
  factory $IncidentPointDtoCopyWith(
          IncidentPointDto value, $Res Function(IncidentPointDto) then) =
      _$IncidentPointDtoCopyWithImpl<$Res, IncidentPointDto>;
  @useResult
  $Res call({String id, String name, List<IncidentPointDto> children});
}

/// @nodoc
class _$IncidentPointDtoCopyWithImpl<$Res, $Val extends IncidentPointDto>
    implements $IncidentPointDtoCopyWith<$Res> {
  _$IncidentPointDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? children = null,
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
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<IncidentPointDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncidentPointDtoCopyWith<$Res>
    implements $IncidentPointDtoCopyWith<$Res> {
  factory _$$_IncidentPointDtoCopyWith(
          _$_IncidentPointDto value, $Res Function(_$_IncidentPointDto) then) =
      __$$_IncidentPointDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<IncidentPointDto> children});
}

/// @nodoc
class __$$_IncidentPointDtoCopyWithImpl<$Res>
    extends _$IncidentPointDtoCopyWithImpl<$Res, _$_IncidentPointDto>
    implements _$$_IncidentPointDtoCopyWith<$Res> {
  __$$_IncidentPointDtoCopyWithImpl(
      _$_IncidentPointDto _value, $Res Function(_$_IncidentPointDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? children = null,
  }) {
    return _then(_$_IncidentPointDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<IncidentPointDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncidentPointDto implements _IncidentPointDto {
  const _$_IncidentPointDto(
      {required this.id,
      required this.name,
      required final List<IncidentPointDto> children})
      : _children = children;

  factory _$_IncidentPointDto.fromJson(Map<String, dynamic> json) =>
      _$$_IncidentPointDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<IncidentPointDto> _children;
  @override
  List<IncidentPointDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'IncidentPointDto(id: $id, name: $name, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncidentPointDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncidentPointDtoCopyWith<_$_IncidentPointDto> get copyWith =>
      __$$_IncidentPointDtoCopyWithImpl<_$_IncidentPointDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncidentPointDtoToJson(
      this,
    );
  }
}

abstract class _IncidentPointDto implements IncidentPointDto {
  const factory _IncidentPointDto(
      {required final String id,
      required final String name,
      required final List<IncidentPointDto> children}) = _$_IncidentPointDto;

  factory _IncidentPointDto.fromJson(Map<String, dynamic> json) =
      _$_IncidentPointDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<IncidentPointDto> get children;
  @override
  @JsonKey(ignore: true)
  _$$_IncidentPointDtoCopyWith<_$_IncidentPointDto> get copyWith =>
      throw _privateConstructorUsedError;
}
