import 'package:flutter/material.dart';
import 'package:flutter_application_2/navigator/page2.dart';
class Page1 extends StatelessWidget {
const Page1({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Page 1'),
),
body: const Center(
child: Text(
'Welcome to Page 1',
style: TextStyle(fontSize: 30.0),
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => const Page2(),
),
);
},
child: const Icon(Icons.arrow_forward),
),
);
}
}