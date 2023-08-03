import 'package:flutter/material.dart';

// class, extends, StatelessWidget, override

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatefulWidget {
  const MeninTirkemem({super.key});

  @override
  State<MeninTirkemem> createState() => _MeninTirkememState();
}

class _MeninTirkememState extends State<MeninTirkemem> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, primaryColor: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 196, 97, 214),
          title: const Text(
            'Flutter kurs 15',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                counter++;
                print(counter);
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                counter--;
                print(counter);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
