import 'package:flutter/material.dart';
import 'package:task/components/back_button_widget.dart';
import 'package:task/components/login_button.dart';
import 'package:task/components/login_header.dart';
import 'package:task/components/password_text_field.dart';
import 'package:task/components/phone_no_field.dart';
import 'package:task/components/reusable_button.dart';
import 'package:task/constants/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(onTap: () {
                //Navigation LOGIC HERE
              }),
              const SizedBox(
                height: 20,
              ),
              const LoginHeader(),
              const Text(
                "Neque ultrices tortor hendrerit libero\nimperdiet purus.",
                style: TextStyle(
                    fontFamily: "PulpDisplay",
                    fontSize: 16,
                    color: AppColors.textColor),
              ),
              const SizedBox(
                height: 30,
              ),
              PhoneNumberField(),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(child: PasswordTextField()),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xff3B3D54),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Image(
                        image:
                            AssetImage("assets/images/icons/Fingerprint.png"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontFamily: "PulpDisplay",
                      fontSize: 16,
                      color: Color(0xff948FAD)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const LoginButton(),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Login With",
                  style: TextStyle(
                      fontFamily: "PulpDisplay",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff7F789D)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                      child: ReusableButton(
                          title: "facebook",
                          logo: "assets/images/logos/facebook-logo.png")),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: ReusableButton(
                          title: "Google",
                          logo: "assets/images/logos/Google.png"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
