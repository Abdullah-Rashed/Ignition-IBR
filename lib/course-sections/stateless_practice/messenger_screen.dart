import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluttercourse/common/constants/constants.dart';
import 'package:fluttercourse/course-sections/stateless_practice/reusable_comps/chat_tile.dart';
import 'package:fluttercourse/course-sections/stateless_practice/reusable_comps/story_circle.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List chats = [
      {
        "img": "${Constants.pngPath}/man.png",
        "name": "Isaac Weinhausen",
        "message": "I'm definately in!",
        "time": "now",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person-2.png",
        "name": "Wendy Stoko",
        "message": "Thank you very much",
        "time": "9m ago",
        "is_read": true,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
      {
        "img": "${Constants.pngPath}/person.png",
        "name": "Facebook user",
        "message": "This message is unavailable",
        "time": "2h ago",
        "is_read": false,
      },
    ];
    List stories = [
      {
        "img": "${Constants.pngPath}/man.png",
        "is_me": true,
      },
      {
        "img": "${Constants.pngPath}/man.png",
        "is_me": false,
      },
      {
        "img": "${Constants.pngPath}/man.png",
        "is_me": false,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
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
              "${Constants.pngPath}/man.png",
              fit: BoxFit.fitHeight,
              height: 60,
              width: 60,
            ),
          ),
        ),
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(
            width: 24,
          ),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: Icon(Icons.edit),
          ),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: ListView(
        children: [
          Gap(12),
          ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chats.length,
            separatorBuilder: (context, index) => Gap(12),
            itemBuilder: (context, index) => ChatTile(
              imgPath: chats[index]["img"],
              name: chats[index]["name"],
              message: chats[index]["message"],
              time: chats[index]["time"],
              isRead: chats[index]["is_read"],
              trailing: SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
