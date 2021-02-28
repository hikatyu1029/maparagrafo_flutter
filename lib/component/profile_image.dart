import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  @override
  State createState() => ProfileImageState();
}

class ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          border: Border.all(
              color: Colors.grey, style: BorderStyle.solid, width: 2),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: Offset(5, 5),
                  )
                ],
                color: Colors.white,
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://zukan.pokemon.co.jp/zukan-api/up/images/index/5bb0cfd44302cd4df0c0c88d37457931.png"))),
          ),
        ));
  }
}
