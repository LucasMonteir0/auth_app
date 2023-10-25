import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData call() {
    return ThemeData(
        useMaterial3: true,

        //TEXT THEME
        textTheme: GoogleFonts.interTextTheme(),

        //TEXT SELECTION THEME
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: AppColors.primary),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),

        )),
        //INPUT DECORATION THEME
        inputDecorationTheme: InputDecorationTheme(
          isCollapsed: true,
          labelStyle: const TextStyle(color: AppColors.primary),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1.5, color: AppColors.black.withOpacity(0.5)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1.5, color: AppColors.grey),
          ),
        ));
  }
}