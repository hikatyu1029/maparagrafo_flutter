import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class ProfileImage extends StatefulWidget {
  @override
  State createState() => ProfileImageState();
}

class ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(
                  "https://zukan.pokemon.co.jp/zukan-api/up/images/index/5bb0cfd44302cd4df0c0c88d37457931.png"))),
    );
  }
}
