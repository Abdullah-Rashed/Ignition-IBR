import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ignition/app.dart';
import 'package:ignition/common/misc/bloc_observer.dart';
import 'package:ignition/course-sections/bloc_practice/blocapp.dart';
import 'package:ignition/course-sections/stateless_practice/components.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = TBlocObserver();
  runApp(const Blocapp());
}
