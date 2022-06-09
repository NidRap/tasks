import 'package:flutter/material.dart';
import 'package:flutter_application_2/fragments/create_drawer.dart';
import 'package:flutter_application_2/navigator/booking%20App/cab.dart';

class CabFragment extends StatelessWidget {
  static const String routeName = '/cabs';
  const CabFragment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: const CabWidget(),
      drawer: const CreateDrawer(),
    );
  }
}
