import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/components/button_bottom.dart';
import 'package:bmi_calculator_flutter/calculation.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.result, required this.bmi, required this.interpretation});
  final String result;
  final String bmi;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'Your Result',
              style: kResultTextStyle,
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kActiveCardColor,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: kOutcomeTextStyle,
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100.0,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtonBottom(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
