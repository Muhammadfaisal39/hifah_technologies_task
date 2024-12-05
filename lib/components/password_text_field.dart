import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        filled: true, // Enable background color
        fillColor: AppColors.textBarBackgroundColor, // Set background color
        hintText: 'Password',
        hintStyle: const TextStyle(
            fontFamily: 'PulpDisplay',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff7F789D)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0), // Circular borders
          borderSide: BorderSide.none, // Remove visible border
        ),
        prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              image: AssetImage(
                "assets/images/icons/Password.png",
              ),
              width: 22,
              height: 22,
            )),
        suffixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Image(
              image: AssetImage(
                "assets/images/icons/View Off.png",
              ),
              width: 22,
              height: 22,
            )),
      ),
    );
  }
}
