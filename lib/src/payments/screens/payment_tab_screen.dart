import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/tab_bar/thesis_tab_bar.dart';
import '../../../core/widgets/thesis/thesis_staggered_list.dart';
import '../bloc/payment_scope.dart';
import '../contracts/payment_dto/payment_dto.dart';
import '../widgets/payment_card.dart';

/// Таб-бар с платежами
class PaymentTabScreen extends StatelessWidget {
  const PaymentTabScreen({
    super.key,
    required this.payments,
  });

  final List<PaymentDto> payments;

  @override
  Widget build(BuildContext context) {
    final paymentCard = (PaymentDto payment) => GestureDetector(
          onTap: () => PaymentScope.loadSingle(context, payment),
          child: PaymentCard(
            payment: payment,
            onMore: () => PaymentScope.loadSingle(context, payment),
          ),
        );
    final sortedPayments = List.of(payments);
    sortedPayments.sort(
      (a, b) => b.period.compareTo(a.period),
    );
    return ThesisTabBar(
      tabs: const ['Все', 'Оплачено', 'Не оплачено'],
      children: [
        ThesisStaggeredList<PaymentDto>(
          items: sortedPayments,
          renderChild: paymentCard,
        ),
        ThesisStaggeredList<PaymentDto>(
          items: sortedPayments.where((payment) => payment.isPaid).toList(),
          renderChild: paymentCard,
        ),
        ThesisStaggeredList<PaymentDto>(
          items: sortedPayments.where((payment) => !payment.isPaid).toList(),
          renderChild: paymentCard,
        ),
      ],
    );
  }
}
