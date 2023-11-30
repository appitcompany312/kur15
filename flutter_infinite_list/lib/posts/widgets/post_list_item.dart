import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/posts/models/post.dart';

class PostItem extends StatelessWidget {
  const PostItem(this.post, {super.key});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text('${post.id}'),
        title: Text(post.title),
        subtitle: Text(post.body),
      ),
    );
  }
}
