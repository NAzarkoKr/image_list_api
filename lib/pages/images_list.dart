import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:images_test/models/image_model.dart';
import 'package:images_test/pages/second_screen.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageModelList;

  ImageList({this.imageModelList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageModelList.length,
      itemBuilder: (context, int currentIndex) {
        return createImageView(imageModelList[currentIndex], context);
      },
    );
  }

  Widget createImageView(ImageModel imageModel, BuildContext context) {
    return ListTile(
      title: Card(
          child: Container(
        child: Column(
          children: [
            Padding(
              child: Image.network(imageModel.picture, width: 220, height: 90),
              padding: EdgeInsets.only(bottom: 8.0),
            ),
            Row(
              children: [
                Padding(
                    child: Text(
                      (imageModel.author) != null ? imageModel.author : "NULL",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(2.0)),
                Expanded(
                  child: Text((imageModel.description) != null
                      ? imageModel.description
                      : "NULL"),
                ),
              ],
            ),
          ],
        ),
      )),
      onTap: () {
        var route = MaterialPageRoute(
            builder: (BuildContext context) => SecondScreen(value: imageModel));
        Navigator.of(context).push(route);
      },
    );
  }
}
