class Article {
  const Article({
    required this.sourses,
    required this.author,
  });

  final List<Source> sourses;
  final String author;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sourses': sourses.map((x) => x.toJson()).toList(),
      'author': author,
    };
  }

  factory Article.fromJson(Map<String, dynamic> map) {
    return Article(
      sourses: List<Source>.from(
        (map['sourses'] as List<dynamic>).map<Source>(
          (x) => Source.fromJson(x as Map<String, dynamic>),
        ),
      ),
      author: map['author'] as String,
    );
  }
}

class Source {
  const Source({
    required this.id,
    required this.name,
  });

  final String? id;
  final String name;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Source.fromJson(Map<String, dynamic> map) {
    return Source(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
    );
  }
}
