import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../contracts/request_dto/request_dto.dart';
import 'request_bloc.dart';

abstract class RequestScope {
  static RequestBloc of(BuildContext context) {
    return BlocProvider.of<RequestBloc>(context);
  }

  static void load(BuildContext context) {
    of(context).add(const RequestEvent.load());
  }

  static void loadSingle(BuildContext context, RequestDto requestDto) {
    of(context).add(RequestEvent.loadSingle(requestDto: requestDto));
  }
}
