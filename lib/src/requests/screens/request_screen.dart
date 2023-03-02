import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/pages/thesis_base_page.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_staggered_list.dart';
import '../bloc/request_bloc.dart';
import '../bloc/request_scope.dart';
import '../contracts/request_dto/request_dto.dart';
import '../widgets/request_card.dart';
import '../widgets/request_shimmer.dart';

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
        initial: (value) => RequestScope.load(context),
      ),
      child: ThesisBasePage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Ваши заявки',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 20),
            BlocBuilder<RequestBloc, RequestState>(
              builder: (context, state) => state.maybeMap(
                empty: (state) => const ThesisEmptyPage(
                  iconPath: "assets/images/icons/request.svg",
                  title: "У вас нет активных заявок",
                  description:
                      "Чтобы создать заявку, нажмите кнопку “+” ниже и заполните все данные",
                ),
                loaded: (state) => ThesisStaggeredList<RequestDto>(
                  items: state.requests,
                  renderChild: (request) => RequestCard(request: request),
                ),
                orElse: () => const RequestShimmer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
