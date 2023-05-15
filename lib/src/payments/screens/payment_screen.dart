import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../bloc/payment_bloc.dart';
import '../bloc/payment_scope.dart';
import '../widgets/payment_shimmer.dart';
import 'details/payment_details_screen.dart';
import 'payment_tab_screen.dart';

/// Экран заявок
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  void initState() {
    PaymentScope.load(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentState>(
      listener: (context, state) => state.mapOrNull(
        initial: (state) => PaymentScope.load(context),
        loadedSingle: (state) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentDetailsScreen(payment: state.payment),
          ),
        ).whenComplete(() => PaymentScope.load(context)),
      ),
      child: ThesisSliverScreen(
        title: 'Ваши платежи',
        child: BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) => state.maybeMap(
            empty: (state) => ThesisEmptyPage(
              iconPath: ThesisIcons.payments,
              title: 'Нет платежей',
              description:
                  'Вам еще не поступали платежи для оплаты. \nЗайдите в этот раздел позднее.',
            ),
            loaded: (state) => PaymentTabScreen(
              payments: state.payments,
            ),
            orElse: () => const PaymentShimmer(),
          ),
        ),
      ),
    );
  }
}
