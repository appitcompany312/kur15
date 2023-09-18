import 'dart:developer';

import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('$text basyldy');
      },
      child: Card(
        color: const Color(0xff0B0120),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Icon(icon, size: 120),
            Text(
              text,
              style: const TextStyle(
                fontSize: 26,
                color: Color(0xffCECCD2),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
