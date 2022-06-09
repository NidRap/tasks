import 'package:flutter/material.dart';

class LV2 extends StatelessWidget {
  // const LV2({Key? key}) : super(key: key);
  final List<String> _courses = [
    'ADO.NET By Examples',
    'Python 3 Programming A Step by Step Guide',
    'Design Patterns and Best Practices in Java',
    'Food Ordering App using Xamarin'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Authored Courses'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.amberAccent,
                child: ListTile(
                  title: Text(_courses[index]),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Colors.amber,
                thickness: 1.0,
              ),
          itemCount: _courses.length),
    );
  }
}
