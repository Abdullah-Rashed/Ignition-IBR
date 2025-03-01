import 'package:flutter/material.dart';
import 'package:ignition/course-sections/todo_app/view/todos_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ignition',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        useMaterial3: true,
      ),
      home: TodosScreen(), //? MVvM = Model View ViewModel
    );
  }
}
