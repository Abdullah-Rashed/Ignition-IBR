import 'package:flutter/material.dart';
import 'package:ignition/common/constants/constants.dart';

class StoryCircle extends StatelessWidget {
  final String imgPath;
  final bool? isMe;
  const StoryCircle({
    super.key,
    required this.imgPath,
    this.isMe = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue.shade100,
              width: 3,
            ),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imgPath,
            fit: BoxFit.fitHeight,
            height: 60,
            width: 60,
          ),
        ),
        isMe == true
            ? Positioned(
                bottom: -4,
                right: -4,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.add_circle,
                  ),
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
