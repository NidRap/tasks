import 'package:flutter/material.dart';
import 'package:flutter_application_2/icon%20widgets/bottom_widget.dart';
import 'package:flutter_application_2/icon%20widgets/card_control.dart';
import 'package:flutter_application_2/utils/constants.dart';

class BMIResult extends StatelessWidget {
final String bmi;
final String bmiResult;
final String bmiNarration;
const BMIResult(
{Key? key,
required this.bmi,
required this.bmiResult,
required this.bmiNarration})
: super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('BMI Calculator'),
leading: const Icon(Icons.health_and_safety),
backgroundColor: kBackgroundColor,
),
body: Container(
color: kBackgroundColor,
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
const Expanded(
child: Padding(
padding: EdgeInsets.only(left: 20.0, top: 20.0),
child: Text('YOUR RESULT', style: klabelLargeTextStyle),
),
),
Expanded(
flex: 5,
child: CardControl(
bgColor: kCardActiveBackground,
cardChild: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text(
bmiResult,
style: klabelSubheaderTextStyle,
textAlign: TextAlign.center,
),
Text(
bmi,
style: klabelNumberTextStyle,
textAlign: TextAlign.center,
),
const Text(
'Normal BMI Range',
style: klabelSubheaderTextStyle,
textAlign: TextAlign.center,
),
const Text(
'18.5 - 24.9',
style: klabelTextStyle,
textAlign: TextAlign.center,
),
Text(
bmiNarration,
style: klabelTextStyle,
textAlign: TextAlign.center,
)
],
),
onPress: () => {}),
),
Expanded(
child: BottomButton(
buttonText: 'RE-CALCULATE YOUR BMI',
onTap: () {
Navigator.pop(context);
}),
)
],
),
),
);
}
}