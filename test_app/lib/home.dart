import 'package:flutter/material.dart';

import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: AppBar(
        title: const Text(
          'Тапшырма 7',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: HomeBody(),
        ),
      ),
    );
  }
}
