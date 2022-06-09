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
        child: Text(
          'Welcome to My First Flutter App',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
