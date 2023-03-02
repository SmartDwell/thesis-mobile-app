import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'request_bloc.dart';

abstract class RequestScope {
  static RequestBloc of(BuildContext context) {
    return BlocProvider.of<RequestBloc>(context);
  }

  static void load(BuildContext context) {
    of(context).add(const RequestEvent.load());
  }
}
