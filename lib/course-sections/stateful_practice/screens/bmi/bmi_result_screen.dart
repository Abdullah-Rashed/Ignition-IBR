import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BmiResultScreen extends StatefulWidget {
  final double insideHeight;
  final int weight;
  const BmiResultScreen({
    super.key,
    required this.insideHeight,
    required this.weight,
  });

  @override
  State<BmiResultScreen> createState() => _BmiResultScreenState();
}

class _BmiResultScreenState extends State<BmiResultScreen> {
  late double bmi;
  late String status;
  late String message;
  late Color statusColor;

  void calcBMI() {
    bmi = widget.weight / (widget.insideHeight * widget.insideHeight);
    bmi = double.parse(bmi.toStringAsFixed(1));

    if (bmi < 18.5) {
      status = "Underweight";
      message = "You are underweight, consider gaining weight.";
      statusColor = Colors.yellow;
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      status = "Normal";
      message = "You have a normal BMI, congrats!";
      statusColor = Colors.green;
    } else {
      status = "Overweight";
      message =
          "You are overweight, consider maintaining a healthier lifestyle.";
      statusColor = const Color.fromARGB(255, 243, 16, 0);
    }
  }

  @override
  void initState() {
    super.initState();
    calcBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A2037),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A2037),
        title: Text("BMI Calculator"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
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
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 100),
            decoration: BoxDecoration(
              color: Color(0xFF323144),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                Gap(35),
                Text(
                  "$bmi",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Gap(35),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
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
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.pink),
            shape: WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(),
              ),
            ),
          ),
          child: Text(
            "Re-Calculate",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
