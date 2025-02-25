import 'package:flutter/material.dart';
import 'package:ignition/course-sections/stateful_practice/screens/bmi/bmi_calc_screen.dart';

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