import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.only(bottom: 8),
          alignment: Alignment.bottomCenter,
          textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          fixedSize: const Size(80, 260),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
