// bul jakta news view du kozomoldogon controller jazylat

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:news_app_with_getx/models/country.dart';
import 'package:news_app_with_getx/models/news_data.dart';

class NewsController extends GetxController {
  NewsController(this.http);

  final Client http;

  RxBool isLoading = false.obs;
  RxString data = ''.obs;
  RxString error = ''.obs;
  Rx<NewsData?> newsData = Rx<NewsData?>(null);
  Rx<Country> country = countries[0].obs;

  Future<void> getNews() async {
    try {
      isLoading.value = true;
      final uri = Uri.parse(getUrl());
      final response = await http.get(uri);
      print(response);
      isLoading.value = false;
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        newsData.value = NewsData.fromJson(decodedData);
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

  void changeContry(Country value) {
    country.value = value;
  }

  String getUrl() {
    return 'https://newsapi.org/v2/top-headlines?country=${country.value.code}&apiKey=5ea6b14fb6084c9dae2f9a00f75cb044';
  }
}
