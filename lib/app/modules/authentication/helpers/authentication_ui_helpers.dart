import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:flutter/material.dart';

class AuthenticationUiHelpers {
  static InputDecoration textFieldInputDecoration(String labelText) {
    return InputDecoration(
        labelText: labelText,
        floatingLabelStyle: const TextStyle(color: AppColors.primary),
        labelStyle: const TextStyle(color: AppColors.grey));
  }
}