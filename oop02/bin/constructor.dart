void main() {
  DartProgrammer samat = DartProgrammer('Samat', 'Dart flog');

  print(samat);
  print(samat.name);
  print(samat.framework);

  samat.writeCode();
}

class DartProgrammer {
  DartProgrammer(this.name, this.framework);

  String? name;
  String framework = 'Flutter';

  void writeCode() {
    print(''' 
void main() {
  print('Hello $name');
}
    ''');
  }
}
