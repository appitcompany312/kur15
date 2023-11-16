import 'package:news_app_with_getx/models/article.dart';

class NewsData {
  const NewsData({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Article> articles;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toJson()).toList(),
    };
  }

  factory NewsData.fromJson(Map<String, dynamic> map) {
    return NewsData(
      status: map['status'] as String,
      totalResults: map['totalResults'] as int,
      articles: List<Article>.from(
        (map['articles'] as List<dynamic>).map<Article>(
          (x) => Article.fromJson(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
