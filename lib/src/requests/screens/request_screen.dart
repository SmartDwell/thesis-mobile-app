import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/pages/thesis_base_page.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../bloc/request_bloc.dart';
import '../bloc/request_scope.dart';
import '../widgets/request_shimmer.dart';
import 'details/request_details_screen.dart';
import 'request_tab_screen.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    RequestScope.load(context);
    return BlocListener<RequestBloc, RequestState>(
      listener: (context, state) => state.mapOrNull(
        initial: (state) => RequestScope.load(context),
        loadedSingle: (state) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RequestDetailsScreen(requestDto: state.request),
          ),
        ).whenComplete(() => RequestScope.load(context)),
      ),
      child: ThesisBasePage(
        padding: EdgeInsets.zero,
        child: ThesisSliverScreen(
          title: 'Ваши заявки',
          child: BlocBuilder<RequestBloc, RequestState>(
            builder: (context, state) => state.maybeMap(
              empty: (state) => const ThesisEmptyPage(
                iconPath: "assets/images/icons/request.svg",
                title: "У вас нет активных заявок",
                description:
                    "Чтобы создать заявку, нажмите кнопку “+” ниже и заполните все данные",
              ),
              loaded: (state) => RequestTabScreen(
                requests: state.requests,
              ),
              orElse: () => const RequestShimmer(),
            ),
          ),
        ),
      ),
    );
  }
}
