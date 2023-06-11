import 'package:flutter/material.dart';

import '../../main.dart';
import '../../src/access/access_page.dart';
import '../../src/home/home_page.dart';
import '../../src/more/settings/settings_screen.dart';
import '../../src/navigation_bar/navigation_bar.dart';
import '../../src/payments/payment_page.dart';
import '../../src/requests/contracts/incident_point_dto/incident_point_dto.dart';
import '../../src/requests/request_page.dart';
import '../../src/requests/screens/add/request_add_screen.dart';
import '../../src/welcome/welcome_screen.dart';
import '../extension/formatted_message.dart';
import '../helpers/message_helper.dart';

/// Коллекция роутов приложения
abstract class ThesisRoutes {
  static const String start = '/';
  static const String welcome = '/welcome';
  static const String navbar = '/navbar';
  static const String settingsScreen = '/settings';
  static const String home = '/home';
  static const String access = '/access';
  static const String requests = '/requests';
  static const String addRequest = '/add_request';
  static const String payments = '/payments';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case start:
          return MaterialPageRoute(builder: (_) => const ThesisApp());
        case welcome:
          return MaterialPageRoute(builder: (_) => const WelcomeScreen());
        case navbar:
          return MaterialPageRoute(builder: (_) => const ThesisNavigationBar());
        case settingsScreen:
          return MaterialPageRoute(builder: (_) => const SettingsScreen());
        case home:
          return MaterialPageRoute(builder: (_) => const HomePage());
        case access:
          return MaterialPageRoute(builder: (_) => const AccessPage());
        case requests:
          return MaterialPageRoute(builder: (_) => const RequestPage());
        case addRequest:
          final incidentPoints = settings.arguments as List<IncidentPointDto>?;
          if (incidentPoints == null) {
            throw Exception('Не переданы данные для добавления заявки');
          }
          return MaterialPageRoute(
            builder: (_) => RequestAddScreen(incidentPoints: incidentPoints),
          );
        case payments:
          return MaterialPageRoute(builder: (_) => const PaymentPage());
        default:
          return null;
      }
    } on Exception catch (e) {
      MessageHelper.showError(e.getMessage);
      return null;
    }
  }
}
