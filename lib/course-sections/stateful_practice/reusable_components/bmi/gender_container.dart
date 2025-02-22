import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GenderContainer extends StatelessWidget {
  final String gender;
  final IconData icon;
  final bool isSelected;
  final VoidCallback? onTap;
  const GenderContainer({
    super.key,
    required this.gender,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected == true
                ? Colors.grey.shade400
                : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                size: 120,
              ),
              Text(
                gender,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(12),
            ],
          ),
        ),
      ),
    );
  }
}
