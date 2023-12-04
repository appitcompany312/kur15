import 'article_model.dart';

class News {
  const News({
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

  factory News.fromJson(Map<String, dynamic> map) {
    return News(
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
