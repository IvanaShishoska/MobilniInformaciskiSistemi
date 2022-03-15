
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:finki/screens/calendar.dart';
import 'package:finki/screens/exam_details.dart';
import 'package:finki/screens/main_screen.dart';
import 'package:finki/screens/map_screen.dart';


// void main() {
//   runApp(MaterialApp(
//     // home: MainScreen(),
//     initialRoute: '/',
//     routes: {
//       '/':(ctx) => MainScreen(),
//       ExamDetailScreen.routeName: (ctx) => ExamDetailScreen(),
//       CalendarScreen.routeName: (ctx) => CalendarScreen(),
//     },
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//   ));
// }

void main() {
  runApp(MaterialApp(
    // home: MainScreen(),
    initialRoute: '/',
    routes: {
      '/':(ctx) => MyHomePage(),
      ExamDetailScreen.routeName: (ctx) => ExamDetailScreen(),
      CalendarScreen.routeName: (ctx) => CalendarScreen(),
      MapScreen.routeName: (ctx) => MapScreen()
    },
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
  ));
}


