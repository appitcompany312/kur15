import 'package:flutter/material.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 4",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Turat Alybaev",
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, size: 30, color: Color(0xff056C5C)),
                  SizedBox(width: 15),
                  Text(
                    '+ 996 557 10 64 46',
                    style: TextStyle(fontSize: 22, color: Color(0xff056C5C)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail, size: 30, color: Color(0xff056C5C)),
                  SizedBox(width: 15),
                  Text(
                    "Alybaevturat@gmail.com",
                    style: TextStyle(fontSize: 22, color: Color(0xff056C5C)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
