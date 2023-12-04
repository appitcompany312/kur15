import 'model.dart';

void main(List<String> arguments) {
  final arData = {
    "sourses": [
      {
        "id": "s01",
        "name": "s01Name",
      },
      {
        "id": "s02",
        "name": "s02Name",
      },
    ],
    "author": "authorName",
  };

  final modelData = Article.fromJson(arData);
  print(modelData);

  final jSonData = modelData.toJson();
  print(jSonData);
}
