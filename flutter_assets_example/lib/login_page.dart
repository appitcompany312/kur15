import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056C5C),
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Turat Alybaev",
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 48,
              ),
            ),
            Image.asset('assets/icons/mail.png'),
            Text('Flutter widgets'),
          ],
        ),
      ),
    );
  }
}
