import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:news_with_bloc/news/model/news_model.dart';

part 'news_event.dart';
part 'news_state.dart';

const url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=5ea6b14fb6084c9dae2f9a00f75cb044';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.client) : super(NewsInitial()) {
    on<NewsEvent>((event, emit) {});
    on<GetNewsEvent>(_onGetNews);
  }

  final Client client;

  Future<void> _onGetNews(GetNewsEvent event, Emitter<NewsState> emit) async {
    emit(NewsLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final body = json.decode(response.body) as Map<String, dynamic>;
        final news = News.fromJson(body);
        emit(NewsSuccess(news));
      } else {
        emit(NewsError('${response.statusCode}, ${response.body}'));
      }
    } catch (e) {
      emit(NewsError(e.toString()));
    }
  }
}
