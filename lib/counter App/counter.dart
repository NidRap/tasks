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
  backgroundColor: Colors.blueGrey,
leading: const Icon(Icons.calculate),
title: const Text('Counter App'),

),
body: Container(
color: Color.fromARGB(255, 164, 174, 242),
child: Center(
child: Text(
'You have Clicked $_counter times',
style: const TextStyle(fontSize: 30.0),
),
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
setState(() {
_counter++;
});
},
child: const Icon(Icons.add),
backgroundColor: Colors.amber,
),
);
}
}