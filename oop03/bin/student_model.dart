/// Cunstructor
class Student {
  Student(
    this.id,
    this.name,
    this.age,
    this.spacial,
    this.kurs,
    this.university,
    this.avarageScore,
  );

  String? id;
  String? name;
  int? age;
  String? spacial;
  int? kurs;
  String? university;
  double? avarageScore;

  void taanysh() {
    print(
      'Menin atym $name. Men $age jashtamyn. $university universitette $kurs kursta okuym. Kesibim $spacial. Ortocho baam $avarageScore...',
    );
  }
}

/// Named Cinstructor
class StudentNamed {
  StudentNamed({
    this.id,
    this.name,
    this.age,
    this.spacial,
    this.kurs,
    this.university,
    this.avarageScore,
  });

  String? id;
  String? name;
  int? age;
  String? spacial;
  int? kurs;
  String? university;
  double? avarageScore;

  void taanysh() {
    print(
      'Menin atym $name. Men $age jashtamyn. $university universitette $kurs kursta okuym. Kesibim $spacial. Ortocho baam $avarageScore...',
    );
  }
}


/// Default cunstructor
class StudentNamedDefault {
  StudentNamedDefault({
    this.id,
    this.name,
    this.age = 19,
    this.spacial,
    this.kurs = 1,
    this.university = "Manas",
    this.avarageScore,
  });

  String? id;
  String? name;
  int? age;
  String? spacial;
  int? kurs;
  String? university;
  double? avarageScore;

  void taanysh() {
    print(
      'Menin atym $name. Men $age jashtamyn. $university universitette $kurs kursta okuym. Kesibim $spacial. Ortocho baam $avarageScore...',
    );
  }
}
