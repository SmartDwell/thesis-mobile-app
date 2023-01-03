import 'package:flutter/material.dart';

import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'welcome/login_screen.dart';

void main() => runApp(const ThesisAppConfigurator());

class ThesisAppConfigurator extends StatelessWidget {
  const ThesisAppConfigurator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thesis mobile app',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.dark,
      home: const ThesisApp(),
    );
  }
}

class ThesisApp extends StatelessWidget {
  const ThesisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
