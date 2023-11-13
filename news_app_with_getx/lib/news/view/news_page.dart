import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:news_app_with_getx/news/controller/news_controller.dart';

class NewsPage extends StatelessWidget {
  const NewsPage(this.controller, {super.key});

  final NewsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value && controller.data.value.isEmpty && controller.error.value.isEmpty) {
            return const CircularProgressIndicator();
          } else if (controller.data.value.isNotEmpty) {
            return Text(controller.data.value);
          } else if (controller.error.value.isNotEmpty) {
            return Text(controller.error.value);
          } else {
            return const SizedBox.shrink();
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getNews();
        },
      ),
    );
  }
}
