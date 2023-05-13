import '../contracts/payment_details_dto/payment_details_dto.dart';
import '../contracts/payment_dto/payment_dto.dart';
import 'payment_repository.dart';

/// Репозиторий платежей
class PaymentRepositoryImpl extends IPaymentRepository {
  @override
  Future<List<PaymentDto>> loadPayments() async {
    return await Future.value(_storage);
  }

  final _storage = [
    PaymentDto(
      id: '1',
      location: 'ЖК Чистые пруды, д. 6, кор. 8, под. 1, кв. 38',
      isPaid: false,
      details: const [
        PaymentDetailsDto(
          name: 'Техническое обслуживание и содержание жилья',
          summa: 2051.18,
        ),
        PaymentDetailsDto(
          name: 'Электроэнергия',
          summa: 1021.18,
        ),
        PaymentDetailsDto(
          name: 'Водоснабжение',
          summa: 21.18,
        ),
        PaymentDetailsDto(
          name: 'Водоотведение',
          summa: 24.18,
        ),
      ],
      period: DateTime.now(),
    ),
    PaymentDto(
      id: '2',
      location: 'ЖК Чистые пруды, д. 6, кор. 8, под. 1, кв. 38',
      isPaid: true,
      details: const [
        PaymentDetailsDto(
          name: 'Техническое обслуживание и содержание жилья',
          summa: 1911.18,
        ),
        PaymentDetailsDto(
          name: 'Электроэнергия',
          summa: 923.42,
        ),
      ],
      period: DateTime.now().add(const Duration(days: -31)),
    ),
  ];
}
