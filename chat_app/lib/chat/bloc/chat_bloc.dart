import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.currentUser,
    required this.secondUser,
    required this.db,
  }) : super(ChatInitial()) {
    on<ChatEvent>((event, emit) {});
    on<SendMessageEvent>(sendMessage);
  }

  final User currentUser;
  final User secondUser;
  final FirebaseFirestore db;

  Future<void> sendMessage(SendMessageEvent event, Emitter<ChatState> emit) async {
    try {
      await db.collection(getChatId).add({
        'sender': currentUser.email,
        'text': event.message,
        'time': DateTime.now(),
        'senderUid': currentUser.uid,
      });
      log('message ${event.message}');
    } catch (e) {
      log('$e');
      emit(ChatError(e.toString()));
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> get chatStream {
    return db.collection(getChatId).orderBy('time', descending: false).snapshots();
  }

  String get getChatId {
    final idList = <String>[currentUser.uid, secondUser.uid];
    idList.sort();
    return idList.join('-');
  }
}
