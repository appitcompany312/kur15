import 'package:capitals_game/mock/asia_test.dart';
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
  tests: asiaTest,
);
const asia = Continent(
  name: 'Asia',
  imagePath: 'assets/images/asia.png',
  tests: asiaTest,
);
const northAmerica = Continent(
  name: 'North America',
  imagePath: 'assets/images/north_america.png',
  tests: asiaTest,
);
const southAmerica = Continent(
  name: 'South America',
  imagePath: 'assets/images/south_america.png',
  tests: asiaTest,
);
const africa = Continent(
  name: 'Africa',
  imagePath: 'assets/images/africa.png',
  tests: asiaTest,
);
const australia = Continent(
  name: 'Australia',
  imagePath: 'assets/images/australia.png',
  tests: asiaTest,
);

const continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
