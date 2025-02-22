import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ignition/course-sections/stateful_practice/reusable_components/bmi/bio_container.dart';
import 'package:ignition/course-sections/stateful_practice/reusable_components/bmi/gender_container.dart';
import 'package:ignition/course-sections/stateful_practice/screens/bmi/bmi_result_screen.dart';

class BmiCalcScreen extends StatefulWidget {
  const BmiCalcScreen({super.key});

  @override
  State<BmiCalcScreen> createState() => _BmiCalcScreenState();
}

class _BmiCalcScreenState extends State<BmiCalcScreen> {
  bool isMaleSelected = true;
  double height = 150;
  int weight = 40;
  int age = 15;
  double heightInMeters = 0;

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      age--;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                isSelected: isMaleSelected,
                onTap: () {
                  setState(() {
                    isMaleSelected = true;
                  });
                },
              ),
              Gap(12),
              GenderContainer(
                gender: "Female",
                icon: Icons.female,
                isSelected: isMaleSelected == false,
                onTap: () {
                  setState(() {
                    isMaleSelected = false;
                  });
                },
              )
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
                  "${height.toInt()}cm",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(4),
                Slider(
                  min: 0,
                  max: 400,
                  value: height,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                    print("HEIGHT ================== $height");
                    print("VALUE ================== $value");
                  },
                ),
              ],
            ),
          ),
          Gap(40),
          Row(
            children: [
              BioContainer(
                metricName: "Weight",
                matricValue: weight,
                incrementFn: () {
                  setState(() {
                    weight++;
                  });
                },
                decrementFn: () {
                  setState(() {
                    weight--;
                  });
                },
              ),
              Gap(12),
              BioContainer(
                metricName: "Age",
                matricValue: age,
                incrementFn: () {
                  setState(() {
                    age++;
                  });
                },
                decrementFn: () {
                  setState(() {
                    age--;
                  });
                },
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
          onPressed: () {
            heightInMeters = height / 100;
            print("HEIHGT IN METERS === $heightInMeters ");

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BmiResultScreen(
                  insideHeight: heightInMeters,
                  weight: weight,
                ),
              ),
            );
          },
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
  }
}
