import 'package:flutter/material.dart';
import 'package:flutter_application_2/fragments/cab_fragments.dart';
import 'package:flutter_application_2/fragments/default_fragments.dart';
import 'package:flutter_application_2/fragments/flight_fragment.dart';
import 'package:flutter_application_2/fragments/hotel_fragment.dart';
import 'package:flutter_application_2/fragments/page_routes.dart';

class BookingsDrawerApp extends StatelessWidget {
const BookingsDrawerApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
initialRoute: PageRoutes.home,
routes: {
PageRoutes.home: (context) => const DefaultFragment(),
PageRoutes.hotel: (context) => const HotelFragment(),
PageRoutes.flight: (context) => const FlightFragment(),
PageRoutes.cab: (context) => const CabFragment()
},
);
}
}