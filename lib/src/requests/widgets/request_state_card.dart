import 'package:flutter/material.dart';

import 'request_states.dart';

class RequestStateCard extends StatelessWidget {
  const RequestStateCard({
    super.key,
    required this.state,
  });

  final RequestStates state;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: RequestStateToColor(state),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        child: Center(
          child: Text(
            RequestStateToString(state),
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
