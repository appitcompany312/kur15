import 'package:flutter/material.dart';
import 'package:stateless_and_stateful/home1.dart';
import 'package:stateless_and_stateful/home2.dart';

import 'home3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage3(),
    );
  }
}
