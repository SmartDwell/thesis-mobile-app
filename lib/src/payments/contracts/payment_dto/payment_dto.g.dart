// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDto _$$_PaymentDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentDto(
      id: json['id'] as String,
      location: json['location'] as String,
      isPaid: json['isPaid'] as bool,
      details: (json['details'] as List<dynamic>)
          .map((e) => PaymentDetailsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: DateTime.parse(json['period'] as String),
    );

Map<String, dynamic> _$$_PaymentDtoToJson(_$_PaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'isPaid': instance.isPaid,
      'details': instance.details,
      'period': instance.period.toIso8601String(),
    };
