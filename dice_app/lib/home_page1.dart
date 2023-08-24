import 'dart:math';

import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

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
      body: const HomePageBody1(),
    );
  }
}

class HomePageBody1 extends StatefulWidget {
  const HomePageBody1({super.key});

  @override
  State<HomePageBody1> createState() => _HomePageBody1State();
}

class _HomePageBody1State extends State<HomePageBody1> {
  int firstDiceIndex = 1;
  int secondDiceIndex = 2;

  Random rundom = Random();

  void changeDice() {
    // firstDiceIndex ke 1-6 cheinki kaalagan sandy berebiz
    firstDiceIndex = rundom.nextInt(6) + 1;
    // secondDiceIndex ke 1-6 cheinki kaalagan sandy berebiz
    secondDiceIndex = rundom.nextInt(6) + 1;
    // UI'dy jangyloo uchun setState chakyrabyz
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: changeDice,
              child: Image.asset('assets/icons/dice$firstDiceIndex.png'),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: changeDice,
              child: Image.asset('assets/icons/dice$secondDiceIndex.png'),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
