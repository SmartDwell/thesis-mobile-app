import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_details_dto.freezed.dart';
part 'payment_details_dto.g.dart';

/// Модель деталей платежа
@freezed
class PaymentDetailsDto with _$PaymentDetailsDto {
  const factory PaymentDetailsDto({
    required String name,
    required double summa,
  }) = _PaymentDetailsDto;

  factory PaymentDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsDtoFromJson(json);
}
