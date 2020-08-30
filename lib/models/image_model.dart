class ImageModel {
  final String id;
  final String description;
  final String author;
  final String picture;

  ImageModel({this.id, this.description, this.author, this.picture});

  factory ImageModel.fromJson(Map<String, dynamic> jsonData) {
    return ImageModel(
      id: jsonData['id'],
      author: jsonData['user']['name'],
      description: jsonData['alt_description'],
      picture: jsonData['urls']['small'],
    );
  }
}
