// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_flutter/icon_content.dart';
import 'package:bmi_calculator_flutter/reusable_card.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInActiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;

  void updateColor(String gender) {
    if (gender == "male") {
      maleCardColor = maleCardColor == kActiveCardColor
          ? kInActiveCardColor
          : kActiveCardColor;

      femaleCardColor = kInActiveCardColor;
    } else {
      femaleCardColor = femaleCardColor == kActiveCardColor
          ? kInActiveCardColor
          : kActiveCardColor;
      maleCardColor = kInActiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor('male');
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor('female');
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
          ],
        ));
  }
}
