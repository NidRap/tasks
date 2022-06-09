import 'package:flutter/material.dart';
import 'package:flutter_application_2/fragments/create_drawer.dart';
import 'package:flutter_application_2/navigator/booking%20App/hotel.dart';
class HotelFragment extends StatelessWidget {
static const String routeName = '/hotels';
const HotelFragment({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Bookings App'),
),
body: const HotelWidget(),
drawer: const CreateDrawer(),
);
}
}