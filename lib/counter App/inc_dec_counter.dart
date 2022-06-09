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
floatingActionButton: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
FloatingActionButton(
onPressed: () {
setState(() {
_counter++;
});
},
child: const Icon(Icons.add),
),
const SizedBox(
width: 20.0,
),
FloatingActionButton(
onPressed: () {
setState(() {
_counter--;
});
},
child: const Icon(Icons.remove),
backgroundColor: Color.fromARGB(255, 8, 125, 69),
),
],
),
);
}
}