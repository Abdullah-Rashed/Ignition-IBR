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
  late String bmiStatus;
  late String bmiMessage;
  


  void calcBMI() {
    bmi = widget.weight / (widget.insideHeight * widget.insideHeight);
    bmi = double.parse(bmi.toStringAsFixed(1)); // Format to 1 decimal 
  }

  void changeStatus(){
    if(bmi <= 17.5){
      bmiStatus = "Low";
      bmiMessage = "Your BMI is low, consider gaining some weight.";
    }

    else if(bmi >= 18 && bmi <=25){
      bmiStatus = "Normal";
      bmiMessage = "Your BMI is normal, you are healthy.";
    }
    else{
      bmiStatus = "High";
      bmiMessage = "Your BMI is high, consider losing some weight.";
    }
  }

  //TODO, change the status of the BMI and the status message based on the actual BMI

  //? 5 - 17 SHOW Low and Low message;
  //? 18.5 - 25 SHOW NORMAL and Normal message;
  //?  26.5 - 1000000 High NORMAL and High message;

  //TODO, Format the BMI result to have 1 decimal value.

  @override
  void initState() {
    super.initState();
    calcBMI();
    changeStatus();
  }

  @override
  Widget build(BuildContext context) {
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
                  "$bmiStatus",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Gap(35),
                Text(
                  "$bmi",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gap(35),
                Text(
                  "$bmiMessage",
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
  }
}
