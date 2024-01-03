import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_crud/models/post_model.dart';
import 'package:rest_api_crud/posts/cubit/posts_cubit.dart';

class CreatePostView extends StatefulWidget {
  const CreatePostView({super.key, this.post});

  final Post? post;

  @override
  State<CreatePostView> createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    if (widget.post != null) {
      titleController.text = widget.post!.title;
      bodyController.text = widget.post!.body;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post == null ? 'Create Post' : 'Update Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              maxLines: 10,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: bodyController,
              maxLines: 10,
              decoration: const InputDecoration(
                labelText: 'Body',
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : widget.post == null
                      ? createPost
                      : updatePost,
              child: isLoading
                  ? const CircularProgressIndicator()
                  : Text(widget.post == null ? 'Create Post' : 'Update Post'),
            ),
            if (widget.post != null)
              ElevatedButton(
                onPressed: isLoading ? null : deletePost,
                child: const Text('Delete Post'),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> createPost() async {
    setState(() {
      isLoading = true;
    });
    final result = await context.read<PostsCubit>().createPost(
          title: titleController.text,
          body: bodyController.text,
        );
    setState(() {
      isLoading = false;
    });
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${result.$1}/n${result.$2}'),
      ));
    }
  }

  Future<void> updatePost() async {
    setState(() {
      isLoading = true;
    });
    final result = await context.read<PostsCubit>().updatePost(
          postId: widget.post!.id,
          title: titleController.text,
          body: bodyController.text,
        );
    setState(() {
      isLoading = false;
    });
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${result.$1}/n${result.$2}'),
      ));
    }
  }

  Future<void> deletePost() async {
    setState(() {
      isLoading = true;
    });
    final result = await context.read<PostsCubit>().deletePost(
          postId: widget.post!.id,
        );
    setState(() {
      isLoading = false;
    });
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${result.$1}/n${result.$2}'),
      ));
    }
  }
}
