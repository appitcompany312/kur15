void main() {
  Olko kg = Olko();
  Olko kz = Olko();
}

class Olko {
  String name;
  int population;
  Shaar borbor;
  List<Oblus> oblustar;
}

class Shaar {
  String name;
  double area;
  int population;
}

class Oblus {
  String name;
  double area;
  int population;
  List<Shaar> shaarlary;
  Shaar borbor;
}

// extends, implements, abstract class, @override, super, 
