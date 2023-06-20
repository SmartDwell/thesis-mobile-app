import 'package:freezed_annotation/freezed_annotation.dart';

import '../../ownership_relation_type.dart';

part 'ownership_dto.freezed.dart';
part 'ownership_dto.g.dart';

/// Модель для собственности
@freezed
class OwnershipDto with _$OwnershipDto {
  const factory OwnershipDto({
    required String id,
    required String userId,
    required String apartmentId,
    required OwnershipRelationType relationType,
    required String complexName,
    required String address,
  }) = _OwnershipDto;

  factory OwnershipDto.fromJson(Map<String, dynamic> json) =>
      _$OwnershipDtoFromJson(json);
}
