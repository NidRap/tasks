import 'package:flutter/material.dart';
class UserDetailsScreen extends StatelessWidget {
static const String routeName = '/UserDetails';
final String uname, passwd, email, mobile;
const UserDetailsScreen(this.uname, this.passwd, this.email, this.mobile);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('$uname details'),
),
body: SizedBox(
width: 500,
height: 200,
child: Card(
elevation: 20,
color: Colors.purple,
child: Column(
children: [
Row(
children: [
const Text('User name : '),
const SizedBox(
width: 10.0,
),
Text(uname),
],
),
const SizedBox(height: 10.0),
Row(
children: [
const Text('Password : '),
const SizedBox(
width: 10.0,
),
Text(passwd),
],
),
const SizedBox(height: 10.0),
Row(
children: [
const Text('Email Id : '),
const SizedBox(
width: 10.0,
),
Text(email),
],
),
const SizedBox(height: 10.0),
Row(
children: [
const Text('Mobile # : '),
const SizedBox(
width: 10.0,
),
Text(mobile),
],
),
const SizedBox(height: 10.0),
],
),
),
),
);
}
}
