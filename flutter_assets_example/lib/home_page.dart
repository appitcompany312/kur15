import 'package:flutter/material.dart';
import 'package:flutter_assets_example/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        title: const Text("Тапшырма 3 Work with Assets"),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I’m Rich",
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/images/daimond.png',
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 172, 133, 6),
        foregroundColor: Colors.white,
        child: const Icon(Icons.arrow_right_alt),
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const LoginPage(),
            ),
          );
        },
      ),
    );
  }
}
