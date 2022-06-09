import 'package:flutter/material.dart';
import 'package:flutter_application_2/BMI/bmi_display_screen.dart';
import 'package:flutter_application_2/BMI/bmi_service.dart';
import 'package:flutter_application_2/icon%20widgets/bottom_widget.dart';
import 'package:flutter_application_2/icon%20widgets/card_control.dart';
import 'package:flutter_application_2/icon%20widgets/icon_widgets.dart';
import 'package:flutter_application_2/icon%20widgets/rounded_icon.dart';
import 'package:flutter_application_2/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GenderType { male, female }

class BMIInput extends StatefulWidget {
  const BMIInput({Key? key}) : super(key: key);

  @override
  State<BMIInput> createState() => _BMIInputState();
}

class _BMIInputState extends State<BMIInput> {
  GenderType selectedGender = GenderType.male;
  double height = 160;
  double weight = 55;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.health_and_safety_sharp),
        title: const Text('BMI Calculator'),
        backgroundColor: kBackgroundColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CardControl(
                        bgColor: selectedGender == GenderType.male
                            ? kCardActiveBackground
                            : kCardInActiveBackground,
                        cardChild: const IconControl(
                            iconData: FontAwesomeIcons.person,
                            iconText: 'MALE'),
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.male;
                          });
                        }),
                  ),
                  Expanded(
                      child: CardControl(
                    bgColor: selectedGender == GenderType.female
                        ? kCardActiveBackground
                        : kCardInActiveBackground,
                    cardChild: const IconControl(
                        iconData: FontAwesomeIcons.personDress,
                        iconText: 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                  )),
                ],
              ),
            ),
            Expanded(
              child: CardControl(
                bgColor: kCardActiveBackground,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT', style: klabelLargeTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toStringAsFixed(1),
                          style: klabelNumberTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kSliderActiveColor,
                        inactiveTrackColor: kSliderInactiveColor,
                        trackShape: const RectangularSliderTrackShape(),
                        trackHeight: 4.0,
                        thumbColor: kSliderThumbColor,
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 12.0),
                        overlayColor: kSliderThumbColor.withAlpha(60),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 28.0),
                      ),
                      child: Slider(
                          value: height,
                          min: 100.0,
                          max: 250,
                          onChanged: (newValue) {
                            setState(() {
                              height = newValue;
                            });
                          }),
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
child: Row(children: [
Expanded(
child: CardControl(
bgColor: kCardActiveBackground,
cardChild: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('WEIGHT', style: klabelSubheaderTextStyle),
Text('$weight', style: klabelNumberTextStyle),
Row(children: [
Expanded(
child: RoundedIconButton(
icon: FontAwesomeIcons.minus,
onPressed: () {
setState(() {
weight--;
});
}),
),
Expanded(
child: RoundedIconButton(
icon: FontAwesomeIcons.plus,
onPressed: () {
setState(() {
weight++;
});
}),
),
])
],
),
onPress: () {}),
),
Expanded(
child: CardControl(
bgColor: kCardActiveBackground,
cardChild: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('AGE', style: klabelSubheaderTextStyle),
Text('$age', style: klabelNumberTextStyle),
Row(children: [
Expanded(
child: RoundedIconButton(
icon: FontAwesomeIcons.minus,
onPressed: () {
setState(() {
if (age > 0) age--;
});
}),
),
Expanded(
child: RoundedIconButton(
icon: FontAwesomeIcons.plus,
onPressed: () {
setState(() {
age++;
});
}),
),
])
],
),
onPress: () {}),
),
]),
),
BottomButton(buttonText: 'CALCULATE BMI', onTap: () {
  var bmi = CalculateBMI(height, weight);
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => BMIResult(
bmi: bmi.calculate(),
bmiResult: bmi.getResult(),
bmiNarration: bmi.getNarration())));
}),
],
),
),
);
}
}


