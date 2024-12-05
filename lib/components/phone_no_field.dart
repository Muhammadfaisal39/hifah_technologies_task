import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class PhoneNumberField extends StatefulWidget {
  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String selectedCountryCode = '+92';
  final List<String> countryCodes = ['+92', '+44', '+91', '+1', '+61'];

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        filled: true, // Enable background color
        fillColor: AppColors.textBarBackgroundColor, // Set background color
        hintText: '0000 00 0000',
        hintStyle: const TextStyle(
          fontFamily: 'PulpDisplay',
          fontSize: 16,
          color: Color(0xff595370)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0), // Circular borders
          borderSide: BorderSide.none, // Remove visible border
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: 79,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.countryCodeContainerColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: DropdownButton<String>(
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'PulpDisplay',
                  color: AppColors.textBarHintTextColor,
                ),
                icon: const Icon(Icons.keyboard_arrow_down_outlined, color: AppColors.textBarHintTextColor,),
                value: selectedCountryCode,
                underline: const SizedBox(), // Removes the dropdown underline
                items: countryCodes
                    .map(
                      (code) => DropdownMenuItem(
                    value: code,
                    child: Text(code),
                  ),
                )
                    .toList(),
                onChanged: (newCode) {
                  setState(() {
                    selectedCountryCode = newCode!;
                  });
                },
              ),
            ),
          )
        ),
      ),
    );
  }
}