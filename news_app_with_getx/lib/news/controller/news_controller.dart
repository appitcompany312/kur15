// bul jakta news view du kozomoldogon controller jazylat

import 'package:get/get.dart';
import 'package:http/http.dart';

const apiLink = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=5ea6b14fb6084c9dae2f9a00f75cb044';

class NewsController extends GetxController {
  NewsController(this.http);

  final Client http;

  RxBool isLoading = false.obs;
  RxString data = ''.obs;
  RxString error = ''.obs;

  Future<void> getNews() async {
    try {
      isLoading.value = true;
      final uri = Uri.parse(apiLink);
      final response = await http.get(uri);
      print(response);
      isLoading.value = false;
      if (response.statusCode == 200) {
        data.value = response.body;
        print(data.value);
      } else {
        error.value = 'Something went wrong';
        print(error.value);
      }
    } catch (e) {
      error.value = 'Something went wrong';
      print(error.value);
    }
  }
}
