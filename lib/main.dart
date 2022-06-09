import 'package:flutter/material.dart';
import 'package:flutter_application_2/list%20views/listview%20scrolling/product_UI.dart';
// import 'package:flutter_application_2/list%20views/speakers%20details/speakers_details.dart';
// import 'package:flutter_application_2/list%20views/listview1.dart';
// import 'package:flutter_application_2/fragments/booking_screens.dart';
// import 'package:flutter_application_2/list%20views/listview1.dart';
// import 'package:flutter_application_2/list%20views/listview_seperated.dart';

import 'list views/speakers details/speaker_main_screen.dart';
// import 'package:flutter_application_2/fragments/default_fragments.dart';
// import 'package:flutter_application_2/navigator/booking%20App/bottom_navy_bar.dart';
// import 'package:flutter_application_2/navigator/booking%20App/curved_nav.dart';
// import 'package:flutter_application_2/navigator/new_page1.dart';
// import 'package:flutter_application_2/navigator/page2.dart';
// import 'package:flutter_application_2/navigator/user%20info/user_details.dart';
// import 'package:flutter_application_2/navigator/user%20info/user_info.dart';
// import 'package:flutter_application_2/navigator/user%20info/new_user_details.dart';

// import 'navigator/user info/register.dart';
// import 'package:flutter_application_2/BMI/bmi_screen.dart';
// import 'package:flutter_application_2/navigator/page1.dart';
// import 'package:flutter_application_2/login/login_validate.dart';

// import 'login/login_controller.dart';
// import 'package:flutter_application_2/login/login_screen.dart';

// import 'column.dart';
// import 'counter App/inc_dec_counter.dart';
// import 'package:flutter_application_2/counter%20App/new_counter.dart';
// import 'package:flutter_application_2/row.dart';
// import 'package:flutter_application_2/counter%20App/counter.dart';
// import 'package:flutter_application_2/new_welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LV4(),
    );
  }
}
// void main() {
// runApp(
// MaterialApp(
// debugShowCheckedModeBanner: false,
// initialRoute: '/',
// routes: {
// '/': (context) => const Register(),
// '/second': (context) => const Page2(),
// UserDetailsScreen.routeName: (context) => const UserDetailsScreen(),
// },
// ),
// );
// }
// void main() {
//   runApp(const NavigationDemoApp());
// }

// class NavigationDemoApp extends StatelessWidget {
//   const NavigationDemoApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       onGenerateRoute: (settings) {
//         if (settings.name == UserDetailsScreen.routeName) {
//           final UserInfo uinfo = settings.arguments as UserInfo;
//           return MaterialPageRoute(builder: (context) {
//             return UserDetailsScreen(
//                 uinfo.userName, uinfo.password, uinfo.emailId, uinfo.mobileNo);
//           });
//         }
//         return null;
//       },
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const Register(),
//         '/second': (context) => const Page2(),
//       },
//     );
//   }
// }

// void main() {
// runApp(
// MaterialApp(
// debugShowCheckedModeBanner: false,
// initialRoute: '/',
// routes: {
// '/': (context) => const Page1(),
// '/second': (context) => const Page2(),
// },
// ),
// );

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             leading: const Icon(Icons.web),
//             title: const Text('My First Flutter App'),
//           ),
//           body: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Colors.greenAccent,
//                 Colors.lightBlueAccent,
//               ]),
//             ),
//             child: const Center(
//               child: Text(
//                 'Welcome to My First Flutter App',
//                 style: TextStyle(
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//             ),
//           )),
//     ),
//   );
// }
// void main() {
//   runApp(
//     const MaterialApp(
//       home:LV1(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }
// void main() {
//   runApp( const NavigationDemoApp());
// }

// // class NavigationDemoApp extends StatelessWidget {
// //   const NavigationDemoApp({Key? key}) : super(key: key);
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       initialRoute: '/',
// //       routes: {
// //         '/': (context) => LVDemo3(),
// //         SpeakerDetails.routeName: (context) => const SpeakerDetails(),
// //       },
// //     );
// //   }
// // }

// Widget build(BuildContext context) {
// return MaterialApp(
// home: Scaffold(
// appBar: AppBar(
// title: const Text('Adding Record to Firebase DB'),
// ),
// body: const AddUser(
// userName: 'NIdhi',
// password: 'Raparia',
// emailId: 'nidhi28an@gmail.com'),
// ),
// );
// }
// }
