import 'package:flutter/material.dart';
import 'package:images_test/models/image_model.dart';

class SecondScreen extends StatefulWidget {
  final ImageModel value;

  SecondScreen({Key key, this.value}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Detail"),
      ),
      body: Image.network(
        '${widget.value.picture}',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
