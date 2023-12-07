import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_with_bloc/news/bloc/news_bloc.dart';
import 'package:news_with_bloc/news/model/article_model.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  void initState() {
    context.read<NewsBloc>().add(GetNewsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return switch (state) {
            NewsInitial() => const Text('initial state'),
            NewsLoading() => const Center(child: CupertinoActivityIndicator()),
            NewsSuccess() => NewsListWidget(state.news.articles),
            NewsError() => Text(state.errorMassage),
          };
        },
      ),
    );
  }
}

class NewsListWidget extends StatelessWidget {
  const NewsListWidget(this.items, {super.key});

  static const _defaultImageUrl =
      'https://thumbs.dreamstime.com/b/news-woodn-dice-depicting-letters-bundle-small-newspapers-leaning-left-dice-34802664.jpg';

  final List<Article> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Card(
          child: ListTile(
            leading: Image.network(item.urlToImage ?? _defaultImageUrl),
            title: Text(item.title),
            subtitle: Text(item.description ?? ''),
          ),
        );
      },
    );
  }
}
