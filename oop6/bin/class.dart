class Animal {
  const Animal(this.name);

  final String name;

  void jashait() {
    print('Uraaa!');
  }

  void unChgar() {
    print('');
  }

  void _tamaktanuu(int i) {
    print('yamak jeim');
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void unChgar() {
    print('miyaaav!');
    super.unChgar();
  }
}

class Jolbors extends Cat {
  Jolbors(super.name);

  @override
  void unChgar() {
    print('Vaaaayg!');
  }
}

void main(List<String> args) {
  final cat1 = Cat('Tom');
  final jolbors1 = Jolbors('Simba');

  print(jolbors1.name); // Simba

  jolbors1.unChgar(); // Vaaaayg!
  jolbors1.jashait();

  print(cat1.name);
  cat1.jashait();

  cat1.unChgar();
}
