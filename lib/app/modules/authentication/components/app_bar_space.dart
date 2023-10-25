import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarSpace extends StatelessWidget {
  const AppBarSpace({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 56,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 0),
              spreadRadius: 1,
              blurRadius: 5,
              color: Colors.black.withOpacity(0.4)),
        ],
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withOpacity(1),
            AppColors.secondary.withOpacity(1),

          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Text(
          'Registre-se',
          style: theme.textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w900,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}