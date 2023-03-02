import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/tab_bar/thesis_tab_bar.dart';
import '../../../core/widgets/thesis/thesis_staggered_list.dart';
import '../contracts/request_dto/request_dto.dart';
import '../widgets/request_card.dart';
import '../widgets/request_states.dart';

class RequestTabScreen extends StatelessWidget {
  const RequestTabScreen({
    super.key,
    required this.requests,
  });

  final List<RequestDto> requests;

  @override
  Widget build(BuildContext context) {
    final statuses = requests
        .map((e) => RequestStateToString(e.currentState))
        .toSet()
        .toList();
    return ThesisTabBar(
      tabs: ["Все", ...statuses],
      children: [
        ThesisStaggeredList<RequestDto>(
          items: requests,
          renderChild: (request) => RequestCard(request: request),
        ),
        ...List.generate(statuses.length, (index) {
          return ThesisStaggeredList<RequestDto>(
            items: requests
                .where((element) =>
                    RequestStateToString(element.currentState) ==
                    statuses[index])
                .toList(),
            renderChild: (request) => RequestCard(request: request),
          );
        }),
      ],
    );
  }
}
