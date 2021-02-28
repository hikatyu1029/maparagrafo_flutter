import 'package:flutter/material.dart';

class ProfileName extends StatefulWidget {
  @override
  State createState() => ProfileNameState();
}

class ProfileNameState extends State<ProfileName> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(Icons.person),
      Text(
        "ピカチュウ",
        style: TextStyle(fontSize: 20),
      ),
    ]);
  }
}
