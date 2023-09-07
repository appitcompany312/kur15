/*
Declaring Class

```dart
class <ClassName> {
  ...
  properties
  ...


  ...
  methods
  ...
}
```

`class` bir jany type(class) atap jatkanybyzdy bildiret
`<ClassName>` biz koldono turgan claas'tyn aty (kaalagandai bere alabyz)
  - san menen bashtalbait `x class 17May{}`
  - kichine tamga menen bahtalbait `class may {}`
  - sozdordun bash tamgasy chong menen jazylat `class DartProgrammer {}`
  - dart ozu koldongon keyword sozdordu koldono albaybyz `class default {}`
*/

void main(List<String> args) {
  int age = 30;
  print(age);
  // User adilbek = User();
}

class Student {
  // property
  String? name;
  int? age;
  String? university;
  String? specialization;
  String? gender;

  // method
  void achkaKaluu() {
    print("Oi kursagym");
  }

  void okuu() {
    print('aa ushundai bele');
  }

  void baaAluu() {
    print('Ejei maga baa koyup beresizbi');
  }
}

// function (antkeni bir klasska taandyk emes)
void sayHello() {}
