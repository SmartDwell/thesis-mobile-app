import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'access_bloc.dart';

/// Скоуп функций доступа
abstract class AccessScope {
  /// Получить экземпляр блока
  static AccessBloc of(BuildContext context) {
    return BlocProvider.of<AccessBloc>(context);
  }

  /// Загрузить двери
  static void load(BuildContext context) {
    of(context).add(const AccessEvent.load());
  }

  /// Открыть дверь
  static void open(BuildContext context, String doorId) {
    of(context).add(AccessEvent.open(doorId: doorId));
  }
}
