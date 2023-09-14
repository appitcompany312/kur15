import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.text,
    required this.baskanda,
  });

  final Color bgColor;
  final String text;
  final void Function()? baskanda;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: bgColor,
        fixedSize: const Size(335, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: baskanda,
      child: Text(text),
    );
  }
}
