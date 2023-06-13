import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// Модель данных пользователя
@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String phone,
    required String email,
    required String name,
    required String surname,
    required String? patronymic,
    required String fullname,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
