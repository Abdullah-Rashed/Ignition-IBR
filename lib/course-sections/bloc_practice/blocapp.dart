import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/bmi_states.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/cubit_bmi.dart';
import 'package:ignition/course-sections/bloc_practice/views/info_screen.dart';

class Blocapp extends StatelessWidget {
  const Blocapp({super.key});

  @override
  Widget build(BuildContext context) {
    //? FOR EXAMPLE THEME CUBIT ARE ALWAYS GLOBAL
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: MaterialApp(
        title: 'Ignition',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.teal,
          useMaterial3: true,
        ),
        home: InfoScreen(), //? MVvM = Model View ViewModel
      ),
    );
  }
}
