
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/navigator/booking%20App/cab.dart';
import 'package:flutter_application_2/navigator/booking%20App/flight.dart';
import 'package:flutter_application_2/navigator/booking%20App/hotel.dart';

class BottomNavApp extends StatefulWidget {
  const BottomNavApp({Key? key}) : super(key: key);
  @override
  State<BottomNavApp> createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {
  static int _currentIndex = 0;
  final tabWidgets = [
    const HotelWidget(),
    const FlightWidget(),
    const CabWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bookings App'),
        ),
        body: tabWidgets[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.hotel),
              title: const Text('Hotels'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.flight),
                title: const Text('Flights'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: const Icon(Icons.directions_car),
                title: const Text('Cabs'),
                activeColor: Colors.pink),
          ],
        ));
  }
}
