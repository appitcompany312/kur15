part of 'news_bloc.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsSuccess extends NewsState {
  NewsSuccess(this.news);

  final News news;
}

final class NewsError extends NewsState {
  NewsError(this.errorMassage);

  final String errorMassage;
}
