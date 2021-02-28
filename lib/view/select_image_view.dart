import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectImageView extends StatefulWidget {
  @override
  State createState() => SelectImageViewState();
}

class SelectImageViewState extends State<SelectImageView> {
  PickedFile imageURI;
  final ImagePicker _picker = ImagePicker();

  Future getImageFromCameraGallery(bool isCamera) async {
    var image = await _picker.getImage(
        source: (isCamera == true ? ImageSource.camera : ImageSource.gallery));
    setState(() {
      imageURI = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
            imageURI == null ? Text("画像を選んで") : Image.file(File(imageURI.path)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              getImageFromCameraGallery(true);
            },
            child: Icon(Icons.camera),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {
              getImageFromCameraGallery(false);
            },
            child: Icon(Icons.photo),
          ),
        ],
      ),
    );
  }
}
