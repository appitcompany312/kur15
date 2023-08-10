import 'package:flutter/material.dart';

class HomePageSateless extends StatelessWidget {
  const HomePageSateless({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build ishtedi Widget");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: CounterRebuild(),
      ),
    );
  }
}

class CounterRebuild extends StatefulWidget {
  const CounterRebuild({super.key});

  @override
  State<CounterRebuild> createState() => _CounterRebuildState();
}

class _CounterRebuildState extends State<CounterRebuild> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print("Build ishtedi State: $count");
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
                // print(count);
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            ElevatedButton(
              onPressed: () {
                count++;
                // print(count);
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
