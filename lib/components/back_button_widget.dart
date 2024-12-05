
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const BackButtonWidget({required this.onTap, super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          color: const Color(0xff241C33),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.greyColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
