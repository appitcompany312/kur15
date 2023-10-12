import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors_cons.dart';

class CityTimeWidget extends StatelessWidget {
  const CityTimeWidget({
    super.key,
    required this.city,
    required this.time,
  });

  final String city;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: AppColors.titleTextColor,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          time,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.timeTextColor,
          ),
        ),
      ],
    );
  }
}
