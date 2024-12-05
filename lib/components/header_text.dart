import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color? color;

  const HeaderText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "PulpDisplay", fontSize: 38, color: color),
    );
  }
}
