// ignore_for_file: unused_local_variable

void main01(List<String> arguments) {
  String str01 = 'Kurs15';
  print(str01);

  num num01 = 12.90;
  print(num01);

  int int01 = 13;
  print(int01);

  double double01 = 12.12;
  print(double01);

  bool bool01 = true; // false
  print(bool01);

  print('$str01, $num01, $int01, $double01, $bool01');

  // String example
  String firstName = 'Semetei';
  String lastName = 'Manas';
  print('Menin atym $firstName, atamdyn aty $lastName');

  // Num example
  num san1 = 47;
  num san2 = 54;
  print('$san1+$san2=${san1 + san2}');

  // Bool example
  bool correct = true;
  bool unCorrect = false;
  print('1+1=2 $correct');
  print('1+3=2 $unCorrect');

  // Dynamic
  dynamic dynamic01 = 'Seitek';
  print(dynamic01);

  // var, char,
  // var ozgormonu ataganda koldonobuz
}

void main02(List<String> args) {
  // 1) formula
  // Type variable-name = variable-value
  String name1 = 'Eldiiar';
  int jash2 = 40;
  // 2 formula
  // var variable-name = variable-value
  var name2 = 'Flutter';
  var jash1 = 40;
}

void main03(List<String> args) {
  // 1: 1 {function} je bolboso bir {class} ichinde okshosh attagy ozgorulmo tuzo albaibyz
  var name = 'Name';
  String name2 = 'Name';

  // 2: birinchi soz kichine tamga menen kiyinki sozdor chong menen ozgorulmonun attary
  num userCount = 1234;

  // 3: Type berilgen var kiyin type ozgorboit
  int mount = 1234;
  mount = 4321;
  // mount = 'Mount';

  // 4 ozgormonun attary {san: 1,2,3,4,5,6,7...} bashtalbailt
  // int 12Jash= 12;
  // var 30Kun =30;
  int jasg12 = 12;

  // 5 ozgormonun attary keyword bolob albait
  // String finally = 'Kurs15';
  // int final = 34;
}

void main(List<String> args) {
  var var01 = 'Var type';
  // var01 = 37;

  dynamic dynamic01 = 'Dynamic type';
  dynamic01 = 37;
  dynamic01 = false;
}
