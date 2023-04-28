import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'core/bloc/bloc_global_observer.dart';
import 'core/helpers/message_helper.dart';
import 'core/repositories/tokens/tokens_repository_impl.dart';
import 'core/splash_screen.dart';
import 'src/navigation_bar/navigation_bar.dart';
import 'src/welcome/auth/auth_scope.dart';
import 'src/welcome/auth/bloc/auth_bloc.dart';
import 'src/welcome/login/bloc/login_bloc.dart';
import 'src/welcome/login/repositories/login_repository_impl.dart';
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

// TODO: Полноэкранный просмотр картинок

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ru_RU', null);
  HttpOverrides.global = MyHttpOverrides();
  Bloc.observer = BlocGlobalObserver();
  Bloc.transformer = bloc_concurrency.sequential();
  runApp(const ThesisAppConfigurator(
    darkThemeInitial: true,
  ));
}

/// Класс конфигурации приложения
class ThesisAppConfigurator extends StatelessWidget {
  const ThesisAppConfigurator({
    Key? key,
    required this.darkThemeInitial,
  }) : super(key: key);

  final bool darkThemeInitial;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            initialState: const AuthState.initial(),
            tokensRepository: TokensRepositoryImpl(),
          ),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(
            initialState: const LoginState.loading(),
            tokensRepository: TokensRepositoryImpl(),
            loginRepository: LoginRepositoryImpl(),
          ),
        ),
      ],
      child: AdaptiveTheme(
        light: lightThemeData,
        dark: darkThemeData,
        initial:
            darkThemeInitial ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light,
        builder: (light, dark) => MaterialApp(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: MessageHelper.rootScaffoldMessengerKey,
          title: 'Thesis mobile app',
          navigatorKey: NavigationService.navigationKey,
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case '/welcome':
                return MaterialPageRoute(builder: (_) => const WelcomeScreen());
              default:
                return null;
            }
          },
          routes: {
            "/start": (context) => const ThesisApp(),
            "/welcome": (context) => const WelcomeScreen(),
            "/navbar": (context) => const ThesisNavigationBar(),
          },
          theme: light,
          darkTheme: dark,
          home: const ThesisApp(),
        ),
      ),
    );
  }
}

/// Класс приложения
class ThesisApp extends StatelessWidget {
  const ThesisApp({super.key});

  @override
  Widget build(BuildContext context) {
    AuthScope.start(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => state.maybeMap(
        authenticated: (_) => const ThesisNavigationBar(),
        unauthenticated: (_) => const WelcomeScreen(),
        orElse: () => const SplashScreen(),
      ),
    );
  }
}
