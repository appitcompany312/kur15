import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stream/stream_page.dart';

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  Future<int> future(int max) async {
    var sum = 0;
    for (int i = 0; i <= max; i++) {
      log('future value: $i');
      await Future.delayed(const Duration(seconds: 1));
      sum += i;
    }

    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future'),
      ),
      body: Center(
        child: FutureBuilder(
          future: future(10),
          builder: (context, snapshot) {
            return Text('${snapshot.data}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const StreamPage(),
            ),
          );
        },
      ),
    );
  }
}
