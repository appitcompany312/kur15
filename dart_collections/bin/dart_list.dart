// ignore_for_file: unused_local_variable

void main01() {
  String str01 = 'Flutter 01';
  int int01 = 12;
  bool bool01 = true; // false
  dynamic dynamic01 = 1.23;

  // `[]` Bul list dart tilinde chaarchy kasha listti bildiret
  // list elemenntterden turat
  // var & type
  var list01 = [1, 2, 3, 4, 5];
  List list02 = [1, 2, 3, 4, 5];
  print(list01);
}

void main(List<String> args) {
  List list01 = [];
  print(list01);
  print(list01.length);
  // `add()` bir value alyp any listke koshot
  list01.add('Flutter kurs 01');
  print(list01);
  list01.add(1);
  print(list01);
  list01.add('Flutter kurs 02');
  print(list01);
  list01.add(2);
  print(list01);
  list01.add('Flutter kurs 03');
  print(list01);
  list01.add(3);
  print(list01);
  list01.add('Flutter kurs 04');
  print(list01);
  list01.add(4);
  print(list01);

  // `length` bir listtin uzundugun
  print(list01.length);

  // `reversed` listti teskeri aylantat
  print(list01.reversed);

  // `first` listtin eng birinchi elemntin chyraryp beret
  print(list01.first);

  // `last` listtin eng akyrky elemntin chyraryp beret
  print(list01.last);

  // `addAll` birden ashyk elementti listke koshot
  list01.addAll([1, 2, 3, 4, 5, 6, 6]);
  print(list01);

  // `remove` listtin ichinen elementti ochurot
  list01.remove('Flutter kurs 01');
  print(list01);

  // `removeAt()` bir index alyp al indextegi maanini listten ochurot
  list01.removeAt(1);
  print(list01);

  // `clear` listtin bardygyn ochurot
  list01.clear();
  print(list01);
}
