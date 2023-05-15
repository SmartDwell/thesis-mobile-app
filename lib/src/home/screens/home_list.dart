import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/thesis_staggered_list.dart';
import '../../payments/contracts/payment_dto/payment_dto.dart';
import '../../payments/widgets/payment_card.dart';
import '../bloc/home_scope.dart';
import '../contracts/news_dto/news_dto.dart';
import '../widgets/news_card.dart';

/// Обертка для для элементов списка
class _HomeWrapper<T> {
  final T item;
  final DateTime created;

  _HomeWrapper(this.item, this.created);
}

/// Таб-бар с платежами
class HomeList extends StatelessWidget {
  const HomeList({
    super.key,
    required this.news,
    required this.payments,
  });

  final List<NewsDto> news;
  final List<PaymentDto> payments;

  @override
  Widget build(BuildContext context) {
    final newsCard = (NewsDto news) => GestureDetector(
          onTap: () => HomeScope.loadSingleNews(context, news),
          child: NewsCard(
            news: news,
            onMore: () => HomeScope.loadSingleNews(context, news),
          ),
        );
    final paymentCard = (PaymentDto payment) => GestureDetector(
          onTap: () => HomeScope.loadSinglePayment(context, payment),
          child: PaymentCard(
            payment: payment,
            onMore: () => HomeScope.loadSinglePayment(context, payment),
          ),
        );

    final preparedDate = [
      ...news.map((element) => _HomeWrapper<NewsDto>(element, element.created)),
      ...payments
          .where((element) => !element.isPaid)
          .map((element) => _HomeWrapper<PaymentDto>(element, element.period)),
    ];
    preparedDate.sort(
      (a, b) => b.created.compareTo(a.created),
    );

    final itemCard = (_HomeWrapper item) {
      if (item.item is PaymentDto) return paymentCard(item.item);
      if (item.item is NewsDto) return newsCard(item.item);
      return const SizedBox.shrink();
    };

    return SingleChildScrollView(
      child: Column(
        children: [
          ThesisStaggeredList<_HomeWrapper>(
            items: preparedDate,
            renderChild: itemCard,
          ),
        ],
      ),
    );
  }
}
