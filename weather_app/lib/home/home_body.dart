import 'package:flutter/material.dart';
import 'package:weather_app/constants/assets_const.dart';
import 'package:weather_app/home/weather_extra.dart';
import 'package:weather_app/model/mock_data.dart';
import 'package:weather_app/widgets/city_time.dart';
import 'package:weather_app/widgets/current_weather_card.dart';
import 'package:weather_app/widgets/weather_info_cards.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CityTimeWidget(
          city: '${(data['location'] as Map)['name']},\n${(data['location'] as Map)['country']}',
          time: 'Tue, Jun 30',
        ),
        const CurrentWetherCard(
          degree: '19',
          weatherState: 'Rainy',
          icon: AssetsConst.weather05,
        ),
        const WeatherInfoCards(
          rainFallValue: '3cm',
          windSpeed: '19km/h',
          humidityPersent: '64%',
        ),
        const SizedBox(height: 30),
        const WeatherExtra(),
        Container(),
      ],
    );
  }
}
