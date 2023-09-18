import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_button.dart';
import '../widgets/gender_card.dart';
import '../widgets/height_card.dart';
import '../widgets/remove_add_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff211834),
      appBar: AppBar(
        backgroundColor: const Color(0xff211834),
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: GenderCard(icon: Icons.male, text: 'MALE'),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: GenderCard(icon: Icons.female, text: 'FEMALE'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            HeightCard(
              value: 180,
              onChanged: (v) {},
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: RemoveAddCard(
                    text: 'WEIGHT',
                    value: 60,
                    onPressedRemove: () {},
                    onPressedAdd: () {},
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: RemoveAddCard(
                    text: 'AGE',
                    value: 28,
                    onPressedRemove: () {},
                    onPressedAdd: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationButton(
        text: 'CALCULATE',
        onPressed: () {},
      ),
    );
  }
}
