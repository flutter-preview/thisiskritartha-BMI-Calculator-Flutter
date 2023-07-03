import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.textContent});
  final String textContent;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: kTextContentStyle,
        ),
      ],
    );
  }
}
