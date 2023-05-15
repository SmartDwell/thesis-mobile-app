import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../payments/repositories/payment_repository_impl.dart';
import 'bloc/home_bloc.dart';
import 'repositories/news_repository_impl.dart';
import 'screens/home_screen.dart';

/// Страница главное
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        initialState: const HomeState.initial(),
        paymentRepository: PaymentRepositoryImpl(),
        newsRepository: NewsRepositoryImpl(),
      ),
      child: const HomeScreen(),
    );
  }
}
