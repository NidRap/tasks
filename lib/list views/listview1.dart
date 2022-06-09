import 'package:flutter/material.dart';

class LV1 extends StatelessWidget {
  const LV1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Authored Courses'),
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                child: ListTile(
                  title: Text('ADO.NET By Example'),
                  trailing: Icon(Icons.forward),
                ),
              ),
            ),
            Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('Working with Databases using JDBC'),
              ),
            ),
            ListTile(
              title: Text('JAVA EE: Programming Servlets'),
            ),
            ListTile(
              title: Text('JAVA EE: Java Server Pages'),
            ),
            ListTile(
              title: Text(
                  'Building Web App using Spring MVC, Hibernate and REST Services'),
            ),
            ListTile(
              title:
                  Text('Python 3 Programming Step By Step Guide for Beginners'),
            ),
            ListTile(
              title: Text(
                  'Object Oriented Programming and SOLID Design Principles using Python'),
            ),
            ListTile(
              title: Text('Design Patterns and Best Practices in Java'),
            ),
            ListTile(
              title: Text('Food Ordering App using Xamarin'),
            ),
          ],
        ));
  }
}
