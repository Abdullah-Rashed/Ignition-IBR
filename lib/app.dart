import 'package:flutter/material.dart';
import 'package:ignition/screens/login_screen.dart';
import 'package:ignition/screens/messenger_screen.dart';
import 'screens/contact_us_screen.dart';

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
      home: MessengerScreen(),
    );
  }
}
