import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/widgets/pages/thesis_base_page.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../payments/screens/details/payment_details_screen.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_scope.dart';
import '../widgets/home_shimmer.dart';
import 'details/news_details_screen.dart';
import 'home_list.dart';

/// Страница главное
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    HomeScope.load(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) => state.mapOrNull(
        initial: (state) => HomeScope.load(context),
        loadedSinglePayment: (state) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PaymentDetailsScreen(payment: state.paymentDto),
          ),
        ).whenComplete(() => HomeScope.load(context)),
        loadedSingleNews: (state) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailsScreen(
              newsDto: state.newsDto,
            ),
          ),
        ).whenComplete(() => HomeScope.load(context)),
      ),
      child: ThesisBasePage(
        padding: EdgeInsets.zero,
        child: ThesisSliverScreen(
          title: 'Новое',
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => state.maybeMap(
              empty: (state) => ThesisEmptyPage(
                iconPath: ThesisIcons.home,
                title: 'Нет новостей',
                description:
                    'У нас нет новостей. \nЗайдите в этот раздел позднее.',
              ),
              loaded: (state) => HomeList(
                news: state.news,
                payments: state.payments,
              ),
              orElse: () => const HomeShimmer(),
            ),
          ),
        ),
      ),
    );
  }
}
