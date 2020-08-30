import 'package:images_test/models/image_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<ImageModel>> downloadJSON() async {
  final dataHTTP =
      "https://api.unsplash.com/photos/?client_id=896d4f52c589547b2134bd75ed48742db637fa51810b49b607e37e46ab2c0043";

  final response = await http.get(dataHTTP);
  if (response.statusCode == 200) {
    List imageModelList = json.decode(response.body);
    return imageModelList
        .map((imageModel) => ImageModel.fromJson(imageModel))
        .toList();
  } else {
    throw Exception("Some Faile");
  }
}
