import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: CouterRebuild(),
      ),
    );
  }
}

class CouterRebuild extends StatefulWidget {
  const CouterRebuild({super.key});

  @override
  State<CouterRebuild> createState() => _CouterRebuildState();
}

class _CouterRebuildState extends State<CouterRebuild> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
            child: Text(
              'сан: $count',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                count--;
                print(count);
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            ElevatedButton(
              onPressed: () {
                count++;
                print(count);
                setState(() {});
              },
              child: const Icon(Icons.add),
            )
          ],
        )
      ],
    );
  }
}

void sayHEllo() {}
