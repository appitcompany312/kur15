import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:weather_app/constants/assets_const.dart';
import 'package:weather_app/constants/colors_cons.dart';
import 'package:weather_app/home/home_body.dart';
import 'package:weather_app/model/weather_model.dart';

const url = 'http://api.weatherapi.com/v1/current.json?key=e9d7452a41614cdea32164320231910&q=new-york';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;

  void getWeatherData() async {
    try {
      print(weather);
      final uri = Uri.parse(url);
      final client = Client();
      final response = await client.get(uri);
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      weather = Weather.fromJson(data);
      setState(() {});
      print(data);
      print(weather);
    } catch (e) {
      print('Kata boldu: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg02,
        elevation: 0,
        title: const Text('Weather App'),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsConst.search),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AssetsConst.menu),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [0.2, 0.8],
            colors: [
              AppColors.bg01,
              AppColors.bg02,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: weather != null ? HomeBody(weather: weather!) : const CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
