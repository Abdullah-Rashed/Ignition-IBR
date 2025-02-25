import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluttercourse/common/constants/constants.dart';

class ChatTile extends StatelessWidget {
  final String imgPath;
  final String name;
  final String message;
  final String time;
  final Widget trailing;
  final bool? isRead;
  const ChatTile({
    super.key,
    required this.imgPath,
    required this.name,
    required this.message,
    required this.time,
    required this.trailing,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imgPath),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            message,
            style: TextStyle(
              color: isRead == true ? Colors.grey : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(6),
          Icon(
            Icons.circle,
            size: 4,
          ),
          Gap(6),
          Text(
            time,
            style: TextStyle(
              color: isRead == true ? Colors.grey : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      trailing: trailing,
      contentPadding: EdgeInsets.all(0),
    );
  }
}
