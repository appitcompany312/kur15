import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_crud/models/post_model.dart';
import 'package:rest_api_crud/posts/cubit/posts_cubit.dart';
import 'package:rest_api_crud/posts/view/create_post_view.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  void initState() {
    context.read<PostsCubit>().getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocBuilder<PostsCubit, PostsState>(
        builder: (context, state) {
          return switch (state) {
            PostsInitial() => const Center(child: CircularProgressIndicator()),
            PostsLoading() => const Center(child: CircularProgressIndicator()),
            PostsSuccess() => PostListWidget(state.posts),
            PostsError() => Center(child: Text(state.message)),
          };
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const CreatePostView(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PostListWidget extends StatelessWidget {
  const PostListWidget(this.posts, {super.key});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: Text(posts[index].id.toString()),
            title: Text(posts[index].title),
            subtitle: Text(posts[index].body),
          ),
        );
      },
    );
  }
}
