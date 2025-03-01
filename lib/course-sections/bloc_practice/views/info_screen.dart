import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/bmi_states.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/cubit_bmi.dart';
import 'package:ignition/course-sections/bloc_practice/views/result_screen.dart';
import 'package:ignition/course-sections/stateful_practice/reusable_components/bmi/bio_container.dart';
import 'package:ignition/course-sections/stateful_practice/reusable_components/bmi/gender_container.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit, BmiStates>(
      listener: (context, state) {
        if (state is ConvertedState) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ResultScreen(),
            ),
          );
        }
      },
      builder: (context, state) {
        final cubit = BmiCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("BMI Calculator"),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GenderContainer(
                    gender: "Male",
                    icon: Icons.male,
                    isSelected: cubit.isMaleSelected,
                    onTap: () => cubit.toggleMaleSelected(),
                  ),
                  Gap(12),
                  GenderContainer(
                      gender: "Female",
                      icon: Icons.female,
                      isSelected: cubit.isMaleSelected == false,
                      onTap: () => cubit.toggleMaleSelected())
                ],
              ),
              Gap(40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Gap(4),
                    Text(
                      "${BmiCubit.get(context).height.toInt()}cm",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(4),
                    Slider(
                      min: 0,
                      max: 400,
                      value: BmiCubit.get(context).height,
                      onChanged: (value) => cubit.onChanged(value: value),
                    ),
                  ],
                ),
              ),
              Gap(40),
              Row(
                children: [
                  BioContainer(
                    metricName: "Weight",
                    matricValue: BmiCubit.get(context).weight,
                    incrementFn: () => cubit.incrementWeight(),
                    decrementFn: () => cubit.decrementAge(),
                  ),
                  Gap(12),
                  BioContainer(
                    metricName: "Age",
                    matricValue: BmiCubit.get(context).age,
                    incrementFn: () => cubit.incrementAge(),
                    decrementFn: () => cubit.decrementAge(),
                  )
                ],
              ),
            ],
          ),

          //? CONTEXT is where YOU are.
          //? moving forward = push;
          //? moving back = pop;
          //? moving forward and removing ALL previous screens = pushReplacement;
          bottomNavigationBar: SizedBox(
            height: 80,
            child: FilledButton(
              onPressed: () => cubit.convertToHeightInMeters(),
              child: Text(
                "Calculate",
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
