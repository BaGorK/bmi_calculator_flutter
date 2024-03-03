import "package:flutter/material.dart";
import 'package:bmi_calculator_flutter/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0a0e32),
        scaffoldBackgroundColor: Color(0xFF0a0e32),
      ),
      home: const InputPage(),
    );
  }
}
