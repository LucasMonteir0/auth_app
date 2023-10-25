import 'package:auth_app/app/modules/authentication/components/login_nature_image.dart';
import 'package:auth_app/app/modules/authentication/components/password_text_field.dart';
import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:auth_app/app/commons/config/routes.dart';
import 'package:auth_app/app/commons/extensions/num.dart';
import 'package:auth_app/app/modules/authentication/helpers/authentication_ui_helpers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final bool isSmallScreen = size.width < 618;
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isSmallScreen)
            LoginNatureImage(
              height: size.height,
              width: size.width * 0.55,
            ),
          Center(
            child: Container(
              height: size.height,
              width: !isSmallScreen ? size.width * 0.45 : size.width,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(flex: 2,),
                  SizedBox.square(
                    dimension: 180,
                      child: Image.asset('assets/auth.png')),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: theme.textTheme.bodyLarge!.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  20.ph,
                  TextFormField(
                    cursorColor: AppColors.primary,
                    decoration:
                        AuthenticationUiHelpers.textFieldInputDecoration(
                            'Usuário'),
                  ),
                  16.ph,
                  const PasswordTextField(),
                  20.ph,
                  SizedBox(
                    width: size.width * 0.2,
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('Entrar'),
                    ),
                  ),
                  32.ph,
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'Não tem uma conta? ',
                          style: theme.textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: 'Criar conta',
                              style: const TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w900),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    Modular.to.pushNamed(AppRoutes.register),
                            ),
                          ]),
                    ),
                  ),
                  const Spacer(flex: 8),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}