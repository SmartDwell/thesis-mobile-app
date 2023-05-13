// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDetailsDto _$$_PaymentDetailsDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentDetailsDto(
      name: json['name'] as String,
      summa: (json['summa'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PaymentDetailsDtoToJson(
        _$_PaymentDetailsDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'summa': instance.summa,
    };
