void main(List<String> args) {
  Dog reks = Dog();
  reks.name = 'reks';

  reks.unChygar();

  Cat kiskis = Cat();
  kiskis.name = 'kiskis';

  kiskis.unChygar();
}

class Dog {
  String? name;

  void unChygar() {
    print('wow! wow!');
  }
}

class Cat {
  String? name;

  void unChygar() {
    print('miyau, miyau');
  }
}
