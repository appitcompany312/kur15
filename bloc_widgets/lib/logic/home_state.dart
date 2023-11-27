// `part of` - sen `home_cubit.dart` degen filedyn bir bolugusung
part of 'home_cubit.dart';

// `abstract` - ech kandai ulgu tuzulbogon tushunuktordu gana bildirgen class
// `extends` - muras aluu
abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  HomeSuccessState(this.data);

  final num data;
}

class HomeErrorState extends HomeState {
  HomeErrorState(this.message);
  final String message;
}
