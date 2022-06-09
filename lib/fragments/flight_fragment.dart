import 'package:flutter/material.dart';
import 'package:flutter_application_2/fragments/create_drawer.dart';
import 'package:flutter_application_2/navigator/booking%20App/flight.dart';
class FlightFragment extends StatelessWidget {
static const String routeName = '/flights';
const FlightFragment({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Bookings App'),
),
body: const FlightWidget(),
drawer: const CreateDrawer(),
);
}
}