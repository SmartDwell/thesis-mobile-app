import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';

/// Карточка состояния заявок
class PaymentStateCard extends StatelessWidget {
  const PaymentStateCard({
    super.key,
    required this.isPaid,
  });

  final bool isPaid;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isPaid ? kGreenColor : kOrangeColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isPaid ? 'Оплачено' : 'Вам нужно оплатить',
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
