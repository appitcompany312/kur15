import 'student_model.dart';

void main(List<String> args) {
  StudentNamedDefault st1 = StudentNamedDefault(
    id: "04",
    name: "Ali",
    spacial: "Mugalim",
    avarageScore: 4.4,
    university: "Ala-Too",
  );

  st1.taanysh();

  Olko kg = Olko(7, "Sadyr Japarov");
  print(kg.name);
  print(kg.area);
}

class Olko {
  Olko(
    this.population,
    this.president, [
    this.name = 'Kyrgyzstan',
    this.area = 23456787654,
  ]);

  String? name = "Kg";
  double? area = 72334;
  int? population;
  String? president;
}
