import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:provider/provider.dart';

import 'core/helpers/message_helper.dart';
import 'core/repositories/tokens_repository.dart';
import 'src/navigation_bar/navigation_bar.dart';
import 'src/welcome/auth/bloc/auth_index.dart';
import 'src/welcome/auth/repositories/auth_repository.dart';
import 'src/welcome/welcome_screen.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

// Для разрешения всех сертификатов.
// Пока используется локалка - без этого никак.
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const ThesisAppConfigurator());
}

class ThesisAppConfigurator extends StatelessWidget {
  const ThesisAppConfigurator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            initialState: const AuthInitialState(),
            tokensRepository: TokensRepository(),
            authRepository: AuthRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: MessageHelper.rootScaffoldMessengerKey,
        title: 'Thesis mobile app',
        navigatorKey: NavigationService.navigationKey,
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/welcome':
              return MaterialPageRoute(
                builder: (context) => const WelcomeScreen(),
              );
            default:
              return null;
          }
        },
        routes: {
          "/start": (context) => const ThesisApp(),
          "/welcome": (context) => const WelcomeScreen(),
          "/navbar": (context) => const ThesisNavigationBar(),
        },
        theme: lightThemeData,
        darkTheme: darkThemeData,
        themeMode: ThemeMode.dark,
        home: const ThesisApp(),
      ),
    );
  }
}

class ThesisApp extends StatelessWidget {
  const ThesisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}
