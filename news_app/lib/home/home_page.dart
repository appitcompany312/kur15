import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/model/news_model.dart';
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
        itemCount: newsFakeList.length,
        itemBuilder: (context, index) {
          print(index);

          return InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(newsFakeList[index].title),
                ),
              );
            },
            child: NewsCard(newsFakeList[index]),
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
