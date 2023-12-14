import 'package:chat_app/components/components.dart';
import 'package:chat_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/thunder.svg', height: 100),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Email',
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Password',
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Login',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomeView(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
