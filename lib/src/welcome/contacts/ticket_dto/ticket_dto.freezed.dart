// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) {
  return _TicketDto.fromJson(json);
}

/// @nodoc
mixin _$TicketDto {
  String get ticketId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDtoCopyWith<TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDtoCopyWith<$Res> {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) then) =
      _$TicketDtoCopyWithImpl<$Res, TicketDto>;
  @useResult
  $Res call({String ticketId, String name});
}

/// @nodoc
class _$TicketDtoCopyWithImpl<$Res, $Val extends TicketDto>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$$_TicketDtoCopyWith(
          _$_TicketDto value, $Res Function(_$_TicketDto) then) =
      __$$_TicketDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticketId, String name});
}

/// @nodoc
class __$$_TicketDtoCopyWithImpl<$Res>
    extends _$TicketDtoCopyWithImpl<$Res, _$_TicketDto>
    implements _$$_TicketDtoCopyWith<$Res> {
  __$$_TicketDtoCopyWithImpl(
      _$_TicketDto _value, $Res Function(_$_TicketDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketId = null,
    Object? name = null,
  }) {
    return _then(_$_TicketDto(
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketDto with DiagnosticableTreeMixin implements _TicketDto {
  const _$_TicketDto({required this.ticketId, required this.name});

  factory _$_TicketDto.fromJson(Map<String, dynamic> json) =>
      _$$_TicketDtoFromJson(json);

  @override
  final String ticketId;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketDto(ticketId: $ticketId, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketDto'))
      ..add(DiagnosticsProperty('ticketId', ticketId))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketDto &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticketId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketDtoCopyWith<_$_TicketDto> get copyWith =>
      __$$_TicketDtoCopyWithImpl<_$_TicketDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketDtoToJson(
      this,
    );
  }
}

abstract class _TicketDto implements TicketDto {
  const factory _TicketDto(
      {required final String ticketId,
      required final String name}) = _$_TicketDto;

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$_TicketDto.fromJson;

  @override
  String get ticketId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TicketDtoCopyWith<_$_TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}
