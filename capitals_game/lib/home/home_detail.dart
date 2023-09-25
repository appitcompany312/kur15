import 'package:capitals_game/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitile('Home Datiail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Bishkek'),
          Image.network('https://www.photohound.co/images/1018113l.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Kyrgyzstan'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Kazakistan'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Ozbekistan'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Turkmenistan'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
