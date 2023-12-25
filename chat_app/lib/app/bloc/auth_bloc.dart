import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chat_app/models/user_model.dart';
// ignore: library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as authPkg;
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.auth}) : super(UnauthenticatedState()) {
    on<AuthEvent>((event, emit) {});
    on<AuthLoginEvent>(_login);
    on<AuthRegisterEvent>(_register);
    on<AuthLogoutEvent>(_logout);
  }

  final authPkg.FirebaseAuth auth;

  Future<void> _login(AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoadingState());

      final fUser = await auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      log('$fUser');

      final appUser = User(email: event.email, password: event.email);

      emit(AuthenticatedState(appUser));
    } catch (e) {
      log('$e');
      emit(AuthErrorState(e.toString()));
    }
  }

  Future<void> _register(AuthRegisterEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoadingState());

      final fUser = await auth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      log('$fUser');

      final appUser = User(email: event.email, password: event.email);

      emit(AuthenticatedState(appUser));
    } catch (e) {
      log('$e');
      emit(AuthErrorState(e.toString()));
    }
  }

  Future<void> _logout(AuthLogoutEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      await auth.signOut();
      emit(UnauthenticatedState());
    } catch (e) {
      log('$e');
      emit(AuthErrorState(e.toString()));
    }
  }
}
