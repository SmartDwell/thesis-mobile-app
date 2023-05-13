import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/payment_bloc.dart';
import 'repositories/payment_repository_impl.dart';
import 'screens/payment_screen.dart';

/// Страница платежей
class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => PaymentBloc(
        initialState: const PaymentState.initial(),
        paymentRepository: PaymentRepositoryImpl(),
      ),
      child: const PaymentScreen(),
    );
  }
}
