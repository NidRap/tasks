import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
const Welcome({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Container(
decoration: const BoxDecoration(
gradient: LinearGradient(colors: [
Colors.orangeAccent,
Colors.lightGreenAccent,
]),
),
child: const Center(
child: Text.rich(
TextSpan(text: 'Flutter ', style: TextStyle(fontSize: 30), children: [

  TextSpan(
    text: 'Always',
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(96, 83, 2, 2),
    )
  ),
TextSpan(
text: ' Rocks',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.black,
fontSize: 30.0,
),
),
TextSpan(
text: ' - Nidhi',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Color.fromARGB(255, 3, 72, 78),
fontSize: 34.0,

),
),
]),
),
),
);
}
}