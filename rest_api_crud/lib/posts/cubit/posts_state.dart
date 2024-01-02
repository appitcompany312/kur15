part of 'posts_cubit.dart';

sealed class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsSuccess extends PostsState {
  PostsSuccess(this.posts);
  final List<Post> posts;
}

class PostsError extends PostsState {
  PostsError(this.message);
  final String message;
}
