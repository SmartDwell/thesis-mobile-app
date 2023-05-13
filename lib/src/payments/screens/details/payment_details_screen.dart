import 'package:flutter/material.dart';

import '../../../../core/widgets/thesis/buttons/thesis_button.dart';
import '../../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../../../theme/theme_extention.dart';
import '../../contracts/payment_dto/payment_dto.dart';

/// Страница детальной информации платежа
class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({
    super.key,
    required this.payment,
  });

  final PaymentDto payment;

  @override
  Widget build(BuildContext context) {
    return ThesisSliverScreen(
      title: payment.title,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        child: Stack(
          children: [
            Column(
              children: List.generate(
                payment.details.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          payment.details[index].name,
                          style: context.textTheme.titleLarge,
                        ),
                      ),
                      Text(
                        '${payment.details[index].summa.toStringAsFixed(2)} ₽',
                        style: context.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Visibility(
                visible: !payment.isPaid,
                child: ColoredBox(
                  color: context.currentTheme.scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 42),
                    child: ThesisButton.fromText(
                      onPressed: () {},
                      text: 'Оплатить ${payment.summa.toStringAsFixed(2)} ₽',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
