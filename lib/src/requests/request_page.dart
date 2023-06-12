import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/repositories/user/user_repository_impl.dart';
import 'bloc/request_bloc.dart';
import 'repositories/request_repository_impl.dart';
import 'screens/request_screen.dart';

/// Страница заявок
class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RequestBloc>(
      create: (context) => RequestBloc(
        initialState: const RequestState.initial(),
        requestRepository: RequestRepositoryImpl(),
        userRepository: UserRepositoryImpl(),
      ),
      child: const RequestScreen(),
    );
  }
}
