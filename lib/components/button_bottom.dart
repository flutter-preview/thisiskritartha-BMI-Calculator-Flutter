import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class ButtonBottom extends StatelessWidget {
  ButtonBottom({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLageButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomHeight,
        color: kBottomColor,
      ),
    );
  }
}
