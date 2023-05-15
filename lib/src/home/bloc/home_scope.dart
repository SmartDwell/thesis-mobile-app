import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../payments/contracts/payment_dto/payment_dto.dart';
import '../contracts/news_dto/news_dto.dart';
import 'home_bloc.dart';

/// Скоуп функции для работы с новостями
abstract class HomeScope {
  /// Получить экземпляр блока
  static HomeBloc of(BuildContext context) {
    return BlocProvider.of<HomeBloc>(context);
  }

  /// Загрузить новости
  static void load(BuildContext context) {
    of(context).add(const HomeEvent.load());
  }

  /// Загрузить и показать одну новость
  static void loadSingleNews(BuildContext context, NewsDto newsDto) {
    of(context).add(HomeEvent.loadSingleNews(newsDto: newsDto));
  }

  /// Загрузить и показать один платеж
  static void loadSinglePayment(BuildContext context, PaymentDto paymentDto) {
    of(context).add(HomeEvent.loadSinglePayment(paymentDto: paymentDto));
  }
}
