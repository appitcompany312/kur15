import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/home/article_detail_page.dart';
import 'package:news_app/model/fake_data.dart';
import 'package:news_app/widgets/news_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: fakeData.articles.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ArticleDetailPage(
                    fakeData.articles[index],
                  ),
                ),
              );
            },
            child: NewsCard(fakeData.articles[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.orang,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.search),
        onPressed: () {},
      ),
    );
  }
}
