import 'package:flutter/material.dart';
import 'package:weather_app/constants/assets_const.dart';
import 'package:weather_app/widgets/city_time.dart';
import 'package:weather_app/widgets/current_weather_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CityTimeWidget(
          city: 'Stockholm,\nSweden',
          time: 'Tue, Jun 30',
        ),
        const CurrentWetherCard(
          degree: '19',
          weatherState: 'Rainy',
          icon: AssetsConst.weather05,
        ),
        Container(),
      ],
    );
  }
}
