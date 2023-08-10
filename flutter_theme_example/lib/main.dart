import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),
          actions: [
            IconButton(
              onPressed: () {
                isDark = !isDark;
                setState(() {});
              },
              icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '0',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

/*

void main() {
  bool isdark = false;
  print(isdark); // true

  isdark = !isdark;
  print(isdark); // false
  
  isdark = !isdark;
  print(isdark); // true
    
}
*/
