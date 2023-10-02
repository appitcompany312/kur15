import 'package:capitals_game/mock/africa_test.dart';
import 'package:capitals_game/mock/asia_test.dart';
import 'package:capitals_game/mock/australia_test.dart';
import 'package:capitals_game/mock/europe_test.dart';
import 'package:capitals_game/mock/north_america.dart';
import 'package:capitals_game/mock/south_america.dart';
import 'package:capitals_game/models/question.dart';

class Continent {
  const Continent({
    required this.name,
    required this.imagePath,
    required this.tests,
  });

  final String name;
  final String imagePath;
  final List<Test> tests;
}

const europe = Continent(
  name: 'Europe',
  imagePath: 'assets/images/europe.png',
  tests: europeTest,
);
const asia = Continent(
  name: 'Asia',
  imagePath: 'assets/images/asia.png',
  tests: asiaTest,
);
const northAmerica = Continent(
  name: 'North America',
  imagePath: 'assets/images/north_america.png',
  tests: northAmericaTest,
);
const southAmerica = Continent(
  name: 'South America',
  imagePath: 'assets/images/south_america.png',
  tests: southAmericaTest,
);
const africa = Continent(
  name: 'Africa',
  imagePath: 'assets/images/africa.png',
  tests: africaTest,
);
const australia = Continent(
  name: 'Australia',
  imagePath: 'assets/images/australia.png',
  tests: australiaTest,
);

const continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
