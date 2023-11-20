import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app_with_getx/constants/app_colors.dart';
import 'package:news_app_with_getx/models/article.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                article.urlToImage ?? 'https://syc.org.uk/wp-content/uploads/2018/07/ls_news.jpg',
                errorBuilder: (context, object, stract) {
                  log('FetcjImage Error: $object, $stract');
                  return const SizedBox.shrink();
                },
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
                    article.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    DateFormat('y MMMM d').format(article.publishedAt),
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
    );
  }
}
