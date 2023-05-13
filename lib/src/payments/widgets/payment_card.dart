import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/thesis/buttons/thesis_text_button.dart';
import '../../../theme/theme_extention.dart';
import '../bloc/payment_scope.dart';
import '../contracts/payment_dto/payment_dto.dart';
import 'payment_state_card.dart';

/// Карточка платежа
class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    required this.payment,
  });

  final PaymentDto payment;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                PaymentStateCard(isPaid: payment.isPaid),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              payment.title,
              style: context.textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/icons/geomark.svg',
                ),
                const SizedBox(width: 6),
                Text(
                  payment.location,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              '${payment.summa.toStringAsFixed(2)} ₽',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.headlineMedium!.copyWith(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color: context.textPrimaryColor,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Visibility(
                  visible: !payment.isPaid,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: ThesisTextButton(
                      title: 'Оплатить'.toUpperCase(),
                      onTap: () {},
                    ),
                  ),
                ),
                ThesisTextButton(
                  title: 'Подробнее'.toUpperCase(),
                  onTap: () => PaymentScope.loadSingle(context, payment),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
