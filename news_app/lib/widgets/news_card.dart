import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/model/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(this.newModel, {super.key});

  final NewModel newModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Image.network(
                  newModel.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newModel.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(newModel.description),
                    Text(
                      newModel.dateTime,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Divider(color: AppColors.balck),
        ],
      ),
    );
  }
}
