import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ignition/app.dart';
import 'package:ignition/common/misc/bloc_observer.dart';
import 'package:ignition/course-sections/bloc_practice/blocapp.dart';
import 'package:ignition/course-sections/stateless_practice/components.dart';
import 'package:ignition/course-sections/todo_app/shared/utils/shared_prefs.dart';
import 'package:ignition/course-sections/todo_app/todo_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = TBlocObserver();
  await SharedPrefs.initialize();
  runApp(const TodoApp());
}
