import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var tuuraEmail = 'turat@gmail.com';
  var tuuraTelefonNomer = '+996557106446';

  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 58, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: phoneNumberController,
                style: const TextStyle(color: Color(0xff056C5C)),
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '+ 996 557 10 64 46',
                  prefixIcon: Icon(Icons.call, color: Color(0xff056C5C)),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                style: const TextStyle(color: Color(0xff056C5C)),
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'turat@gmail.com',
                  prefixIcon: Icon(Icons.mail, color: Color(0xff056C5C)),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(phoneNumberController.text);
                  print(emailController.text);
                  if (tuuraTelefonNomer == phoneNumberController.text && tuuraEmail == emailController.text) {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: const Text("Kata boldu"),
                          content: const Text("Email Je PhoneNumber Kata!!! Tuura jaz :) "),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("ok"),
                            )
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
