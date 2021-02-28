import 'package:flutter/material.dart';
import 'package:kazisuru_test/component/profile_image.dart';
import 'package:kazisuru_test/component/profile_name.dart';
import 'package:kazisuru_test/component/space_box.dart';

class ProfileView extends StatefulWidget {
  @override
  State createState() => ProfileViewState();
}

class ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ProfileImage(),
              SpaceBox(
                height: 20,
              ),
              ProfileName(),
            ],
          )),
    );
  }
}
