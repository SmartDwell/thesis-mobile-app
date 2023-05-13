import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../core/helpers/fab_notifier_helper.dart';
import '../../../core/widgets/pages/thesis_base_page.dart';
import '../../../core/widgets/pages/thesis_empty_page.dart';
import '../../../core/widgets/thesis/thesis_sliver_screen.dart';
import '../../../theme/theme_colors.dart';
import '../bloc/request_bloc.dart';
import '../bloc/request_scope.dart';
import '../widgets/request_shimmer.dart';
import 'details/request_details_screen.dart';
import 'request_tab_screen.dart';

/// Экран заявок
class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  void initState() {
    RequestScope.load(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestBloc, RequestState>(
      listener: (context, state) => state.mapOrNull(
        initial: (state) => RequestScope.load(context),
        loadedSingle: (state) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RequestDetailsScreen(requestDto: state.request),
          ),
        ).whenComplete(() => RequestScope.load(context)),
      ),
      child: ChangeNotifierProvider<FabNotifierHelper>(
        create: (context) => FabNotifierHelper(),
        child: ThesisBasePage(
          padding: EdgeInsets.zero,
          child: Builder(
            builder: (context) {
              return ThesisSliverScreen(
                title: 'Ваши заявки',
                child: BlocBuilder<RequestBloc, RequestState>(
                  builder: (context, state) => state.maybeMap(
                    empty: (state) => const ThesisEmptyPage(
                      iconPath: "assets/images/icons/request.svg",
                      title: "У вас нет активных заявок",
                      description:
                          "Чтобы создать заявку, нажмите кнопку “+” ниже и заполните все данные",
                    ),
                    loaded: (state) => RequestTabScreen(
                      requests: state.requests,
                    ),
                    orElse: () => const RequestShimmer(),
                  ),
                ),
                floatingActionButton: Consumer<FabNotifierHelper>(
                  builder: (context, notifier, child) {
                    return Visibility(
                      visible: notifier.isShow,
                      child: FloatingActionButton(
                        backgroundColor: kPrimaryLightColor,
                        foregroundColor: Colors.white,
                        child: const Icon(
                          Icons.add_rounded,
                          size: 40,
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/add_request')
                                .whenComplete(() => RequestScope.load(context)),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
