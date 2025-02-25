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
            color: isSelected == true ? Colors.pink : Color(0xFF323144),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                size: 120,
                color: Colors.white,
              ),
              Text(
                gender,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Gap(12),
            ],
          ),
        ),
      ),
    );
  }
}
