import 'package:freezed_annotation/freezed_annotation.dart';

import '../payment_details_dto/payment_details_dto.dart';

part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

/// Модель платежа
@freezed
class PaymentDto with _$PaymentDto {
  const PaymentDto._();
  const factory PaymentDto({
    required String id,
    required String location,
    required bool isPaid,
    required List<PaymentDetailsDto> details,
    required DateTime period,
  }) = _PaymentDto;

  double get summa => details.map((e) => e.summa).reduce(
        (value, element) => value + element,
      );

  String get title {
    final month = [
      'январь',
      'февраль',
      'март',
      'апрель',
      'май',
      'июнь',
      'июль',
      'август',
      'сентябрь',
      'октябрь',
      'ноябрь',
      'декабрь',
    ];

    return "Начисление за ${month[period.month - 1]}, ${period.year}г";
  }

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);
}
