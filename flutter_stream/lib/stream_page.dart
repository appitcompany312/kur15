import 'dart:developer';

import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  Stream<int> stream(int to) async* {
    var sum = 0;
    for (int i = 1; i <= to; i++) {
      await Future.delayed(const Duration(seconds: 1));
      log('stream value: $i');
      sum += i;
      yield sum;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: stream(10),
          builder: (context, snapshot) {
            return Text('${snapshot.data}');
          },
        ),
      ),
    );
  }
}
