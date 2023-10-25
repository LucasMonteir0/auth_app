import 'package:auth_app/app/commons/config/app_colors.dart';
import 'package:flutter/material.dart';

class LoginNatureImage extends StatelessWidget {
  final double width;
  final double height;
  const LoginNatureImage({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return  Container(
      height: height,
      width:width,
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
              AppColors.secondary.withOpacity(1),
              AppColors.primary.withOpacity(1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          image: const DecorationImage(
            opacity: 0.5,
            fit: BoxFit.cover,
            image: AssetImage('assets/nature.jpg'),
          )),
    );
  }
}