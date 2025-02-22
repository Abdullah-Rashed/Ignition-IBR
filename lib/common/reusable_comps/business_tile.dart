import 'package:flutter/material.dart';

class BusinessTile extends StatelessWidget {
  final String imgPath;
  final String? thirdText;
  final bool? isOnline;
  const BusinessTile({
    super.key,
    required this.imgPath,
    this.thirdText,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
