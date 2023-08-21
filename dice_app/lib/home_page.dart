import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color(0xffDA0037),
        title: const Text("Dice App"),
      ),
      body: Center(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
              child: Image.asset('assets/icons/dice1.png'),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Image.asset('assets/icons/dice2.png'),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
