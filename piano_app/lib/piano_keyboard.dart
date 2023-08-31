import 'package:flutter/material.dart';

import 'components/piano_black_button.dart';
import 'components/piano_white_button.dart';

class PianoKeyboard extends StatelessWidget {
  const PianoKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      // ListView scroll boluu uchun
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          // Stack kabattap koyuu uchun
          Stack(
            children: [
              Row(
                children: [
                  PianoWhiteButton(text: 'f1'),
                  PianoWhiteButton(text: 'f2'),
                  PianoWhiteButton(text: 'f3'),
                  PianoWhiteButton(text: 'f4'),
                  PianoWhiteButton(text: 'f5'),
                  PianoWhiteButton(text: 'f6'),
                  PianoWhiteButton(text: 'f7'),
                  PianoWhiteButton(text: 'f1'),
                  PianoWhiteButton(text: 'f2'),
                  PianoWhiteButton(text: 'f3'),
                  PianoWhiteButton(text: 'f4'),
                  PianoWhiteButton(text: 'f5'),
                  PianoWhiteButton(text: 'f6'),
                  PianoWhiteButton(text: 'f7'),
                ],
              ),
              Row(
                children: [
                  PianoBlackButton(text: "f1", leftMargin: 55),
                  PianoBlackButton(text: "f2", leftMargin: 26),
                  PianoBlackButton(text: "", visible: false),
                  PianoBlackButton(text: "f4", leftMargin: 45),
                  PianoBlackButton(text: "f5", leftMargin: 26),
                  PianoBlackButton(text: "f6", leftMargin: 26),
                  PianoBlackButton(text: "", visible: false),
                  PianoBlackButton(text: "f1", leftMargin: 45),
                  PianoBlackButton(text: "f2", leftMargin: 26),
                  PianoBlackButton(text: "", visible: false),
                  PianoBlackButton(text: "f4", leftMargin: 45),
                  PianoBlackButton(text: "f5", leftMargin: 26),
                  PianoBlackButton(text: "f6", leftMargin: 26),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
