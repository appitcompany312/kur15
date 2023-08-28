import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter hylophone',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          AudioItem(
            note: 'note1',
            color: const Color(0xffEF443A),
            player: player,
          ),
          AudioItem(
            note: 'note2',
            color: const Color(0xffF99700),
            player: player,
          ),
          AudioItem(
            note: 'note3',
            color: const Color(0xffFFE93B),
            player: player,
          ),
          AudioItem(
            note: 'note4',
            color: const Color(0xff4CB050),
            player: player,
          ),
          AudioItem(
            note: 'note5',
            color: const Color(0xff2E968C),
            player: player,
          ),
          AudioItem(
            note: 'note6',
            color: const Color(0xff2996F5),
            player: player,
          ),
          AudioItem(
            note: 'note7',
            color: const Color(0xff9B28B1),
            player: player,
          ),
        ],
      ),
      bottomNavigationBar: const SizedBox(height: 70),
    );
  }
}

class AudioItem extends StatelessWidget {
  const AudioItem({
    super.key,
    required this.player,
    required this.color,
    required this.note,
  });

  final AudioPlayer player;
  final Color color;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          player.play(AssetSource('audios/$note.wav'));
        },
        child: Container(color: color),
      ),
    );
  }
}
