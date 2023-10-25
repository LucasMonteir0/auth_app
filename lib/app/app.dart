import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:auth_app/app/commons/config/app_theme.dart';
import 'package:auth_app/app/commons/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppRoutes.login);
    return MaterialApp.router(
      theme: AppTheme.call(),
      title: 'Authentication App',
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}