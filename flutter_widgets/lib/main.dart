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
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: const Color(0xffECB90B),
        title: const Text('Тапшырма 3'),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(fontSize: 46),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://pngfre.com/wp-content/uploads/diamond-png-image-pngfre-3-1024x620.png',
              width: 300,
            ),
            const FlutterLogo(size: 100),
          ],
        ),
      ),
    );
  }
}
