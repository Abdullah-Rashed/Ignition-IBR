import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyStatefulScreen extends StatefulWidget {
  const MyStatefulScreen({super.key});

  @override
  State<MyStatefulScreen> createState() => _MyStatefulScreenState();
}

class _MyStatefulScreenState extends State<MyStatefulScreen> {
  int counter = 1;

  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Statefuls"),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Text(
                  "${counter}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                          //? 2
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Gap(4),
                          Text("Increment"),
                        ],
                      ),
                    ),
                    Gap(12),
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          if (counter <= 0) {
                            return;
                          }
                          counter--;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.remove),
                          Gap(4),
                          Text("Decrement"),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text("Hello")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
