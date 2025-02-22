import 'package:flutter/material.dart';

//? void receiveParams({required num param1, required num param2}) {
//?   num? res;
//?   res = param1 + param2;
//? }

//? function Button(name: string, email: string) {
//?   return <span> hello my name is ${name} and my email is ${email} </span>;
//? }

class SocialTile extends StatelessWidget {
  //TODO add parameters
  const SocialTile({
    super.key,
    //TODO receive parameters
  });

  @override
  Widget build(BuildContext context) {
    //TODO use parameter values
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade400,
            ),
          ),
          child: Container(
            height: 35,
            width: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.facebook_outlined,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: Text(
            "Stay updated, connect, and angage with us on Facebook.",
          ),
        ),
      ],
    );
  }
}
