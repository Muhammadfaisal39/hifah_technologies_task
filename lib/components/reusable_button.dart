import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class ReusableButton extends StatelessWidget {
  final String title;
  final String logo;
  const ReusableButton({super.key, required this.title, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.loginWithFBGoogleColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(logo), width: 24, height: 24,),
          const SizedBox(
            width: 07,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'PulpDisplay',
                fontSize: 18,
                color: AppColors.whiteColor),
          )
        ],
      ),
    );
  }
}
