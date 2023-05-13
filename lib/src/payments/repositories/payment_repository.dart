import '../contracts/payment_dto/payment_dto.dart';

abstract class IPaymentRepository {
  Future<List<PaymentDto>> loadPayments();
}
