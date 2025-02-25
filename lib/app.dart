import 'package:flutter/material.dart';
import 'package:fluttercourse/course-sections/stateful_practice/screens/bmi/bmi_calc_screen.dart';
import 'package:fluttercourse/course-sections/stateful_practice/screens/bmi/bmi_result_screen.dart';
import 'package:fluttercourse/course-sections/stateful_practice/screens/my_stateful_screen.dart';
import 'package:fluttercourse/course-sections/stateless_practice/login_screen.dart';
import 'package:fluttercourse/course-sections/stateless_practice/messenger_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ignition',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        useMaterial3: true,
      ),
      home: BmiCalcScreen(),
    );
  }
}

//? INIT STATE
//? BUILD STATE
//? MOUNTED STATE
//? DISPOSE STATE
