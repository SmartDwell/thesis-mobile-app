import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../contracts/request_dto/request_dto.dart';
import 'request_bloc.dart';

/// Скоуп функции для работы с заявками
abstract class RequestScope {
  /// Получить экземпляр блока
  static RequestBloc of(BuildContext context) {
    return BlocProvider.of<RequestBloc>(context);
  }

  /// Загрузить заявки
  static void load(BuildContext context) {
    of(context).add(const RequestEvent.load());
  }

  /// Загрузить и показать одну заявку
  static void loadSingle(BuildContext context, RequestDto requestDto) {
    of(context).add(RequestEvent.loadSingle(requestDto: requestDto));
  }

  /// Показать экран добавления заявки
  static void loadAddScreen(BuildContext context) {
    of(context).add(const RequestEvent.loadAddScreen());
  }
}
