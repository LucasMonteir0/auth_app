import 'package:auth_app/app/modules/authentication/components/app_bar_space.dart';
import 'package:auth_app/app/modules/authentication/components/password_text_field.dart';
import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:auth_app/app/core/datasource/authentication/authentication_datasource.dart';
import 'package:auth_app/app/core/model/register_model.dart';
import 'package:auth_app/app/modules/authentication/helpers/authentication_ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _firstNameController;
  late TextEditingController _lasNameController;
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  late AuthenticationDatasource _auth;

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
    _lasNameController = TextEditingController();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();

    _auth = Modular.get<AuthenticationDatasource>();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const AppBarSpace(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextField(
                    controller: _firstNameController,
                    decoration:
                        AuthenticationUiHelpers.textFieldInputDecoration(
                            'Nome'),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: _lasNameController,
                    decoration:
                        AuthenticationUiHelpers.textFieldInputDecoration(
                            'Sobrenome'),
                  ),
                ),
              ],
            ),
            TextField(
              controller: _usernameController,
              decoration:
                  AuthenticationUiHelpers.textFieldInputDecoration('Usuário'),
            ),
            TextField(
              controller: _emailController,
              decoration:
                  AuthenticationUiHelpers.textFieldInputDecoration('Email'),
            ),
            PasswordTextField(controller: _passwordController),
            PasswordTextField(
              labelText: 'Confirmar senha',
              controller: _confirmPasswordController,
            ),
            ElevatedButton(
                onPressed: () async {
                  final newUser = RegisterModel(
                      firstName: _firstNameController.text,
                      lastName: _lasNameController.text,
                      username: _usernameController.text,
                      email: _emailController.text,
                      password: _passwordController.text);

                  await _auth.registerUser(newUser);
                },
                child: const Text('Registrar'))
          ],
        ),
      ),
    );
  }
}