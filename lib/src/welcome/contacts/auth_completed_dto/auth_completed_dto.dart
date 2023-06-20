import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/contracts/user_dto/user_dto.dart';
import '../tokens_dto/tokens_dto.dart';

part 'auth_completed_dto.freezed.dart';
part 'auth_completed_dto.g.dart';

/// Модель данных для завершения авторизации
@freezed
class AuthCompletedDto with _$AuthCompletedDto {
  const factory AuthCompletedDto({
    required TokensDto tokens,
    required UserDto user,
  }) = _AuthCompletedDto;

  factory AuthCompletedDto.fromJson(Map<String, dynamic> json) =>
      _$AuthCompletedDtoFromJson(json);
}
