import 'package:flutter/material.dart';

import '../../../shared/contracts/user_dto/user_dto.dart';
import '../../../shared/repositories/user/user_repository_impl.dart';
import '../../../theme/theme_extention.dart';
import 'user_shimmer_widget.dart';

/// Карточка пользователя
class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  late Future<UserDto> _userFuture;

  @override
  void didChangeDependencies() {
    final userRepository = UserRepositoryImpl();
    _userFuture = Future.delayed(const Duration(milliseconds: 250), () async {
      return userRepository.getUserFromCache();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserDto>(
      future: _userFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = snapshot.data!;
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.fullName,
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "${user.email} • ${user.phone}",
                          style: context.textTheme.bodyMedium,
                        ),
                      ],
                    ),
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
        } else if (snapshot.hasError) {
          const message =
              "Ошибка при загрузке данных пользователя. Попробуйте перезагрузить страницу.";
          //MessageHelper.showError(message);
          debugPrint(message);
          debugPrint(snapshot.error.toString());
          return const UserShimmerWidget();
        }
        return const UserShimmerWidget();
      },
    );
  }
}
