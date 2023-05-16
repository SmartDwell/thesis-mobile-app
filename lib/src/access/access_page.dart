import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/access_bloc.dart';
import 'repositories/door_repository_impl.dart';
import 'screens/access_screen.dart';
import 'utils/marker_select_notifier.dart';

/// Страница доступа
class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MarkerSelectNotifier>(
      create: (context) => MarkerSelectNotifier(),
      builder: (context, child) {
        return BlocProvider<AccessBloc>(
          create: (context) => AccessBloc(
            initialState: const AccessState.initial(),
            doorRepository: DoorRepositoryImpl(),
          ),
          child: const AccessScreen(),
        );
      },
    );
  }
}
