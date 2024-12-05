import 'package:flutter/material.dart';
import 'package:task/components/header_text.dart';

import '../constants/app_colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderText(
          text: "Login to",
          color: AppColors.whiteColor,
        ),
        Row(
          children: [
            HeaderText(
              text: "Healthful",
              color: AppColors.whiteColor,
            ),
            SizedBox(width: 7),
            HeaderText(
              text: "Account",
              color: AppColors.textColor,
            ),
          ],
        ),
      ],
    );
  }
}
