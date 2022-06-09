import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
const CounterApp({Key? key}) : super(key: key);
@override
State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

int _counter = 0;

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
leading: const Icon(Icons.calculate),
title: const Text('Counter App'),
),
body: Container(
color: Color.fromARGB(255, 156, 194, 211),
child: Center(
child: Text(
'You have Clicked $_counter times',
style: const TextStyle(fontSize: 30.0),
),
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
//? Step 4:
setState(() {
_counter++;
});
},
child: const Icon(Icons.add),
),
floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
bottomNavigationBar: BottomAppBar(
color: Color.fromARGB(255, 239, 219, 147),
shape: const CircularNotchedRectangle(),
child: Container(
height: 50.0,

),
),
);
}
}