// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnershipDto _$$_OwnershipDtoFromJson(Map<String, dynamic> json) =>
    _$_OwnershipDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      apartmentId: json['apartmentId'] as String,
      relationType:
          $enumDecode(_$OwnershipRelationTypeEnumMap, json['relationType']),
      complexName: json['complexName'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_OwnershipDtoToJson(_$_OwnershipDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'apartmentId': instance.apartmentId,
      'relationType': _$OwnershipRelationTypeEnumMap[instance.relationType]!,
      'complexName': instance.complexName,
      'address': instance.address,
    };

const _$OwnershipRelationTypeEnumMap = {
  OwnershipRelationType.ownership: 0,
  OwnershipRelationType.ownershipFamily: 1,
  OwnershipRelationType.renter: 2,
};
