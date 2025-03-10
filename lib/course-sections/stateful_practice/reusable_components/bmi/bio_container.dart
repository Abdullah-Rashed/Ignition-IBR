import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BioContainer extends StatelessWidget {
  final String metricName;
  final int matricValue;
  final VoidCallback? incrementFn;
  final VoidCallback? decrementFn;
  const BioContainer({
    super.key,
    required this.metricName,
    required this.matricValue,
    required this.incrementFn,
    required this.decrementFn,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              "$metricName",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade500,
              ),
            ),
            Gap(4),
            Text(
              "$matricValue",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: decrementFn,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: Icon(Icons.remove),
                  ),
                ),
                GestureDetector(
                  onTap: incrementFn,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
