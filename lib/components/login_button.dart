import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          color: AppColors.loginButtonColor,
          borderRadius: BorderRadius.circular(50)),
      child: const Center(
        child: Text(
          "Login",
          style: TextStyle(
              fontFamily: 'PulpDisplay',
              fontSize: 18,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
