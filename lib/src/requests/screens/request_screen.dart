import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/pages/thesis_base_page.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_progress_bar.dart';
import '../../../core/widgets/thesis/thesis_text_button.dart';
import '../bloc/request_bloc.dart';
import '../bloc/request_scope.dart';
import '../widgets/request_state_card.dart';
import '../widgets/request_states.dart';

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
                loaded: (state) => Column(
                  children: List.generate(
                    state.requests.length,
                    (index) {
                      final request = state.requests[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '№${request.number}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        const SizedBox(width: 8),
                                        RequestStateCard(
                                          state: request.currentState,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      dateTimeFormatter.format(request.created),
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  request.title,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/icons/geomark.svg',
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      request.incidentPointListAsString,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  request.description,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Visibility(
                                  visible:
                                      request.currentState == RequestStates.New,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Row(
                                      children: [
                                        ThesisTextButton(
                                          title: 'Редактировать'.toUpperCase(),
                                          onTap: () {},
                                        ),
                                        const SizedBox(width: 16),
                                        ThesisTextButton(
                                          title: 'Отменить'.toUpperCase(),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                orElse: () => const Center(
                  child: ThesisProgressBar(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
