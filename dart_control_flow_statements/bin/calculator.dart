import 'dart:io';

// calculate function bolsun
// al x1, x2 jana bir operator(+, -, *, /) alsyn
// esepti atkarsyn

void main01(List<String> args) {
  calculate01(8, 9, '/');
}

void calculate01(num x1, num x2, String operator) {
  if (operator == '+') {
    print('$x1 + $x2 = ${x1 + x2}');
  } else if (operator == '-') {
    print('$x1 - $x2 = ${x1 - x2}');
  } else if (operator == 'x') {
    print('$x1 x $x2 = ${x1 * x2}');
  } else if (operator == '/') {
    print('$x1 / $x2 = ${x1 / x2}');
  } else {
    print('Suranych berilgen operatordu teksheriniz');
  }
}

void main(List<String> args) {
  calculate();
}

void calculate() {
  print('Birinchi sandy jazynyz :)');
  var value1 = stdin.readLineSync()!;
  num x1 = num.parse(value1);
  print('Ekinchi sandy jazynyz :)');
  var value2 = stdin.readLineSync()!;
  num x2 = num.parse(value2);
  print('Atkaruuchu amal jazynyz :)');
  var operator = stdin.readLineSync()!;
  print('Rahmat, esebiniz');

  if (operator == '+') {
    print('$x1 + $x2 = ${x1 + x2}');
  } else if (operator == '-') {
    print('$x1 - $x2 = ${x1 - x2}');
  } else if (operator == 'x') {
    print('$x1 x $x2 = ${x1 * x2}');
  } else if (operator == '/') {
    print('$x1 / $x2 = ${x1 / x2}');
  } else {
    print('Suranych berilgen operatordu teksheriniz');
  }
  print('Done!');
}
