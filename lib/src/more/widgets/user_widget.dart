import 'package:flutter/material.dart';

import '../../../theme/theme_extention.dart';

/// Карточка пользователя
class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Селимов Загидин М.",
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "seljmov@list.ru, +7 (988) 789-39-91",
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: ClipOval(
                child: Image.asset("assets/av.jpeg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
