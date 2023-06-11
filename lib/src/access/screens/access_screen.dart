import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/helpers/message_helper.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_progress_bar.dart';
import '../bloc/access_bloc.dart';
import '../bloc/access_scope.dart';
import 'map_screen.dart';

/// Страница доступа
class AccessScreen extends StatefulWidget {
  const AccessScreen({super.key});

  @override
  State<AccessScreen> createState() => _AccessScreenState();
}

class _AccessScreenState extends State<AccessScreen> {
  @override
  void initState() {
    AccessScope.load(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccessBloc, AccessState>(
      listener: (context, state) => state.mapOrNull(
        initial: (state) => AccessScope.load(context),
        successOpened: (state) => MessageHelper.showSuccess(
          'Дверь открыта',
        ),
        failureOpened: (state) => MessageHelper.showError(
          'Что-то пошло не так...',
        ),
      ),
      child: Scaffold(
        body: BlocBuilder<AccessBloc, AccessState>(
          builder: (context, state) => state.maybeMap(
            empty: (state) => ThesisEmptyPage(
              iconPath: ThesisIcons.access,
              title: 'Нет доступа',
              description:
                  'У вас нет доступа к этому разделу. \nОбратитесь в управляющую организацию.',
            ),
            loaded: (state) => MapScreen(
              doors: state.doors,
            ),
            orElse: () => const Center(
              child: ThesisProgressBar(),
            ),
          ),
        ),
      ),
    );
  }
}
