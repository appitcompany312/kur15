class Continent {
  const Continent(this.name, this.imagePath);

  final String name;
  final String imagePath;
}

const europe = Continent('Europe', 'assets/images/europe.png');
const asia = Continent('Asia', 'assets/images/asia.png');
const northAmerica = Continent('North America', 'assets/images/north_america.png');
const southAmerica = Continent('South America', 'assets/images/south_america.png');
const africa = Continent(' Africa', 'assets/images/africa.png');
const australia = Continent('Australia', 'assets/images/australia.png');

const continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
