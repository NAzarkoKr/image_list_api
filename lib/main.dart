import 'package:flutter/material.dart';
import 'package:images_test/models/image_model.dart';
import 'package:images_test/pages/images_list.dart';
import 'package:images_test/services/json_get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image List"),
        ),
        body: Center(
          child: FutureBuilder<List<ImageModel>>(
            future: downloadJSON(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                List<ImageModel> imageModelList = snapShot.data;
                return ImageList(imageModelList: imageModelList);
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
