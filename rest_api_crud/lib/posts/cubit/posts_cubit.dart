import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:rest_api_crud/models/post_model.dart';

part 'posts_state.dart';

// CRUD - Create, Read, Update, Delete
const url = 'https://jsonplaceholder.typicode.com/posts';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(this.client) : super(PostsInitial());

  final Client client;

  // Get (Read) posts
  /*
  bul endpointke `https://jsonplaceholder.typicode.com/posts` bailanyshyp
  post datalaryn alyp keluu
  eger iygiliktuu kelse datany Post modelge kotorup state ti successke ozgortuu
  eger bir problema bolso state ti errorgo ozgortuu
  */
  Future<void> getPosts() async {
    emit(PostsLoading());
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body) as List<dynamic>;
        final posts = body.map((e) => Post.fromJson(e)).toList();
        emit(PostsSuccess(posts));
      } else {
        emit(PostsError(response.body));
      }
    } catch (e) {
      emit(PostsError(e.toString()));
    }
  }

  // Post (Create) post
  /*
  koldonuuchudan post uchun title jana description alyp
  any bekendke create jiberebiz `https://jsonplaceholder.typicode.com/posts`
  */
  Future<(int, String)> createPost({required String title, required String body}) async {
    try {
      final response = await client.post(
        Uri.parse(url),
        headers: {'Content-type': 'application/json; charset=UTF-8'},
        body: jsonEncode({'title': title, 'body': body, 'userId': 1}),
      );

      if (response.statusCode == 201) {
        return (201, 'Post created successfully');
      } else {
        return (0, response.body);
      }
    } catch (e) {
      return (0, e.toString());
    }
  }

  // Put (Update) post
  /*
  koldonuuchudan post idsine karap jangy title jana descriptionyn alyp ondoibuz
  //https://jsonplaceholder.typicode.com/posts/1
  */
  Future<(int, String)> updatePost({
    required int postId,
    required String title,
    required String body,
  }) async {
    try {
      final res = await client.put(
        Uri.parse('$url/$postId'),
        headers: {'Content-type': 'application/json; charset=UTF-8'},
        body: jsonEncode({
          'id': postId,
          'title': title,
          'body': body,
          'userId': 1,
        }),
      );
      if (res.statusCode == 200 || res.statusCode == 201) {
        return (200, 'Post updated successfully');
      } else {
        return (0, res.body);
      }
    } catch (e) {
      return (0, e.toString());
    }
  }

  // Patch (Update mini) post
  /*
  koldonuuchudan post idsine karap jangy title jana descriptionyn alyp ondoibuz
  //https://jsonplaceholder.typicode.com/posts/1
  */

  // Delete (Delete) post
  /*
  koldonuuchudan post idsine karap any beckten churobuz
  // https://jsonplaceholder.typicode.com/posts/1
  */
  Future<(int, String)> deletePost({required int postId}) async {
    try {
      final res = await client.delete(Uri.parse('$url/$postId'));
      if (res.statusCode == 200) {
        return (200, 'Post deleted successfully');
      } else {
        return (0, res.body);
      }
    } catch (e) {
      return (0, e.toString());
    }
  }
}
