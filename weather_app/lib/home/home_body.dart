import 'package:flutter/material.dart';
import 'package:weather_app/constants/assets_const.dart';
import 'package:weather_app/home/weather_extra.dart';
import 'package:weather_app/model/weather_model.dart';
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
          city: '${mockWeather.location.name}\n${mockWeather.location.country}',
          time: mockWeather.location.localtime,
        ),
        CurrentWetherCard(
          degree: '${mockWeather.current.tempC.toInt()}',
          weatherState: mockWeather.current.condition.text,
          icon: AssetsConst.weather05,
        ),
        WeatherInfoCards(
          rainFallValue: '${mockWeather.current.precipMM}cm',
          windSpeed: '${mockWeather.current.windKPH}km/h',
          humidityPersent: '${mockWeather.current.humidity}%',
        ),
        const SizedBox(height: 30),
        const WeatherExtra(),
        Container(),
      ],
    );
  }
}
