/*
Объект в Dart
В объектно-ориентированном программировании объект - это самостоятельная 
единица кода и данных. Объекты создаются на основе шаблонов, называемых классами. 
Объект состоит из свойств (переменных) и методов (функций). 

Объект - это экземпляр класса.

Например, объект велосипеда может иметь такие атрибуты, как цвет,
размер и текущая скорость. У него могут быть такие методы, как changeGear, 
pedalFaster и brake.
*/

void main() {
  Car bmwx7 = Car();
  print(bmwx7);

  bmwx7.marka = 'BMW';
  bmwx7.model = 'X7';
  bmwx7.motor = 'Soonun Motor';
  bmwx7.atKuchu = 1000;
  bmwx7.kolomu = 4.4;
  bmwx7.color = 'black';
  bmwx7.country = 'Germany';
  bmwx7.jyl = 2019;
  bmwx7.abaly = 8;

  print(bmwx7.marka);
  print(bmwx7.model);
  print(bmwx7.jyl);
  print(bmwx7.atKuchu);
  print(bmwx7.color);
  print(bmwx7.kolomu);
  print(bmwx7.abaly);

  bmwx7.ichet();
  bmwx7.jurot();
  bmwx7.signalCall();
}

class Car {
  String? marka;
  String? model;
  String? motor;
  int? atKuchu;
  double? kolomu;
  String? color;
  String? country;
  int? jyl;
  // 1-10 cheyin 1-jaman 10-super
  int? abaly;

  void jurot() {
    print('$marka $model jurup baratat');
  }

  void signalCall() {
    print('Biiip!!!');
  }

  void ichet() {
    print('$marka $model bak boshop jatat');
  }
}
