import 'package:flutter/material.dart';

class RequestStateCard extends StatelessWidget {
  const RequestStateCard({
    super.key,
    required this.stateName,
    required this.stateColor,
  });

  final String stateName;
  final Color stateColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: stateColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        child: Center(
          child: Text(
            stateName,
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
