import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/home/article_detail_page.dart';
import 'package:news_app/model/atricle_data.dart';
import 'package:news_app/widgets/news_card.dart';

const link = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=5ea6b14fb6084c9dae2f9a00f75cb044';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AtricleData? atricleData;

  // 1) Bir bot internet arkyluu `link`ke baryl datany alyp kelsin
  final Dio dio = Dio();

  Future<void> getData() async {
    final response = await dio.get(link);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final body = response.data;
      atricleData = AtricleData.fromJson(body);
      setState(() {});
    }
  }
  // 2) egerde kelgen jooptun stattusu 200 je 201 bolso body syn al
  // 3) alyngan body ny alyp modelge kotorup `atricleData` ga beruu

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orang,
        foregroundColor: AppColors.white,
        title: const Text('News Aggregator'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: atricleData != null
          ? ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: atricleData?.articles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => ArticleDetailPage(
                          atricleData!.articles[index],
                        ),
                      ),
                    );
                  },
                  child: NewsCard(atricleData!.articles[index]),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.orang,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.search),
        onPressed: () {},
      ),
    );
  }
}
