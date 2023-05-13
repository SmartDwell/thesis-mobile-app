import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../contracts/payment_dto/payment_dto.dart';
import 'payment_bloc.dart';

/// Скоуп функции для работы с платежами
abstract class PaymentScope {
  /// Получить экземпляр блока
  static PaymentBloc of(BuildContext context) {
    return BlocProvider.of<PaymentBloc>(context);
  }

  /// Загрузить платежи
  static void load(BuildContext context) {
    of(context).add(const PaymentEvent.load());
  }

  /// Загрузить и показать один платеж
  static void loadSingle(BuildContext context, PaymentDto paymentDto) {
    of(context).add(PaymentEvent.loadSingle(paymentDto: paymentDto));
  }
}
