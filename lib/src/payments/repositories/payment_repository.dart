import '../contracts/payment_dto/payment_dto.dart';

/// Интерфейс репозиторий платежей
abstract class IPaymentRepository {
  /// Загрузить все платежи
  Future<List<PaymentDto>> loadPayments();
}
