// `part` senin bir bolugun `home_state.dart`

import 'dart:developer';

import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  // super(HomeInitialState()); -  eng algachky abaly
  HomeCubit() : super(HomeInitialState());

  Future<void> parseNumber(String value) async {
    // Function ishtep bashtady UI loading korsot
    emit(HomeLoadingState());
    // Bir sekunda kut
    await Future.delayed(const Duration(seconds: 1));
    // `try` araket jasap kor
    try {
      // String value'ni number ge kotor
      final parcedValue = num.parse(value);
      // kotorulgan numberdi consolgo jaz
      log(parcedValue.toString());
      // iygiliktuu ayakyadyk UI ga kabar ber
      emit(HomeSuccessState(parcedValue));
    } catch (e) {
      log(e.toString());
      // Bir kata boldi UI ga kabar ber
      emit(HomeErrorState(e.toString()));
    }
  }
}
