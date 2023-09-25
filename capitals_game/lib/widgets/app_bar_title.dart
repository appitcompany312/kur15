import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitile extends StatelessWidget {
  const AppBarTitile(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.besley(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
