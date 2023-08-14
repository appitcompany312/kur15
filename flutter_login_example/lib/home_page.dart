import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Wellcome!"),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Login'),
            ),
            TextButton(
              onPressed: () {
                // showDatePicker(
                //   context: context,
                //   initialDate: DateTime.now(),
                //   firstDate: DateTime(1900),
                //   lastDate: DateTime(2027),
                // );

                showDialog(
                  context: context,
                  builder: (ctx) {
                    return CupertinoDatePicker(
                      onDateTimeChanged: (v) {},
                    );
                  },
                );
              },
              child: const Text('Date'),
            ),
          ],
        ),
      ),
    );
  }
}
