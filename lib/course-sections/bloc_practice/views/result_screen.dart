import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/bmi_states.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/cubit_bmi.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    super.key,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
    //? 1st way of calling cubit WITHOUT re-initializing the values inside
    BmiCubit.get(context).calcBMI();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit, BmiStates>(
      listener: (context, state) {},
      builder: (context, state) {
        //? 2nd way of calling cubit WITHOUT re-initializing the values inside
        final cubit = context.read<BmiCubit>();
        return Scaffold(
          appBar: AppBar(
            //? If you want to hide the back Arrow
            // automaticallyImplyLeading: false,
            title: Text("BMI Calculator"),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
            children: [
              Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 100),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      "Normal",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Gap(35),
                    Text(
                      "${cubit.bmi.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(35),
                    Text(
                      "You have a normal BMI, congrats!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: SizedBox(
            height: 80,
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Re-Calculate",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.only(),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
