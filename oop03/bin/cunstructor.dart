void main(List<String> args) {
  Car tesla = Car("Tesla", "Moldel 3", 2019);

  tesla.juruu(); // Tesla jurup bara jatat
}

class Car {
  Car(this.marka, this.name, [this.jyl = 2023]);

  String? marka;
  String? name;
  int? jyl;

  void juruu() {
    print('$marka jurup bara jatat, $jyl');
  }
}
