import 'package:flutter/material.dart';

import '../../../core/utils/debouncer.dart';
import '../../../core/widgets/thesis/tab_bar/thesis_tab_bar.dart';
import '../../../core/widgets/thesis/thesis_filter_field.dart';
import '../../../core/widgets/thesis/thesis_staggered_list.dart';
import '../bloc/request_scope.dart';
import '../contracts/request_dto/request_dto.dart';
import '../widgets/request_card.dart';

/// Таб-бар с заявками
class RequestTabScreen extends StatelessWidget {
  const RequestTabScreen({
    super.key,
    required this.requests,
  });

  final List<RequestDto> requests;

  @override
  Widget build(BuildContext context) {
    final requestCard = (RequestDto request) => GestureDetector(
          onTap: () => RequestScope.loadSingle(context, request),
          child: RequestCard(request: request),
        );
    final debouncer = Debouncer(milliseconds: 500);
    final filterPatternNotifier = ValueNotifier<String>('');
    return Column(
      children: [
        ThesisFilterField(
          onChanged: (value) => debouncer.run(
            () => filterPatternNotifier.value = value,
          ),
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: filterPatternNotifier,
          builder: (context, filterPattern, child) {
            final requestsByDateTime = requests
                .where((request) =>
                    "${request.title}${request.description}${request.incidentPointFullName}"
                        .toLowerCase()
                        .contains(filterPattern.toLowerCase()))
                .toList();
            requestsByDateTime.sort(
              (a, b) => b.created.compareTo(a.created),
            );
            final statuses = requestsByDateTime
                .map((request) => request.stateName)
                .toSet()
                .toList();
            return ThesisTabBar(
              tabs: ["Все", ...statuses],
              children: [
                ThesisStaggeredList<RequestDto>(
                  items: requestsByDateTime,
                  renderChild: requestCard,
                ),
                ...List.generate(statuses.length, (index) {
                  return ThesisStaggeredList<RequestDto>(
                    items: requestsByDateTime
                        .where(
                            (request) => request.stateName == statuses[index])
                        .toList(),
                    renderChild: requestCard,
                  );
                }),
              ],
            );
          },
        ),
      ],
    );
  }
}
