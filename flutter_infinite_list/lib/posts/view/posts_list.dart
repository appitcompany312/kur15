import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/widgets/bottom_loader.dart';
import 'package:flutter_infinite_list/posts/widgets/post_list_item.dart';

import '../bloc/post_bloc.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return switch (state.status) {
          PostStatus.failure => const Center(child: Text('failed to fetch posts')),
          PostStatus.initial => const Center(child: CircularProgressIndicator()),
          PostStatus.success || PostStatus.loading => state.posts.isEmpty
              ? const Center(child: Text('no posts'))
              : ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return index >= state.posts.length ? const BottomLoader() : PostItem(state.posts[index]);
                  },
                  itemCount: state.hasReachedMax ? state.posts.length : state.posts.length + 1,
                  controller: _scrollController,
                ),
        };
      },
    );
  }

  void _onScroll() {
    final bloc = context.read<PostBloc>();
    if (bloc.state.status != PostStatus.loading) {
      if (_isBottom) context.read<PostBloc>().add(PostFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
