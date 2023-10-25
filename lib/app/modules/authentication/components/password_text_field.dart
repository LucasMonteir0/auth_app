import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final String? labelText;
  final Color? labelColor;

  const PasswordTextField({
    super.key,
    this.controller,
    this.inputFormatters,
    this.focusNode,
    this.labelText, this.labelColor,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      inputFormatters: widget.inputFormatters,
      onTap: () => setState(() {}),
      decoration: InputDecoration(
          labelText: widget.labelText ?? 'Senha',
          floatingLabelStyle: const TextStyle(color: AppColors.primary),
          labelStyle: const TextStyle(color: AppColors.grey),
          suffixIcon: ExcludeFocus(
            child: InkWell(
              hoverColor: Colors.transparent,
               splashColor: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              onTap: () => setState(() {
              _obscureText = !_obscureText;
            }),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                _obscureText
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
                color: AppColors.primary,
              ),
              ),
            ),
          )),
    );
  }
}