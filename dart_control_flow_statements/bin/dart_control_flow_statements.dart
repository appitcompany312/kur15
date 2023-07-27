void main01(List<String> arguments) {
  checkNumber(7);
  checkNumber(-9);
}

// bir fuinction, num parametr alsyn.
// eger oshol berilgen pr 0 chong bolso ong san
// consolgo berilgen san ong san dep jazsyn
// andai bolboso ters san dep jazsyn

void checkNumber(num number) {
  if (number > 0) {
    print('$number ong san');
  } else {
    print('$number ters san');
  }
}

void main02(List<String> args) {
  checkAge('Alice', 3);
  checkAge('Bob', 16);
  checkAge('Charlie', 22);
  checkAge('Alan', 36);
  checkAge('Chris', 58);
  checkAge('Pifragile', -2);
}

// bir fuinction, String name ,int(adamdyn jashy{jash}) parametr alsyn.
// jash 3 ton kichine bolso name bobok
// jash 3-13 name ospurum
// jash 13-18 name jetkinchek
// jash 18-35 name kulgun
// jash 35-55 name kishi
// jash 55 -> name kary

// if - eger
// else if - andai emes myndai bolso
// else - takyr bolboso
void checkAge(String name, int jash) {
  if (jash > 0 && jash <= 3) {
    print('$name bobok');
  } else if (jash > 3 && jash <= 13) {
    print('$name ospurum');
  } else if (jash > 13 && jash <= 18) {
    print('$name jetkinchek');
  } else if (jash > 18 && jash <= 35) {
    print('$name kulgun');
  } else if (jash > 35 && jash <= 55) {
    print('$name kishi');
  } else if (jash > 55) {
    print('$name kary');
  } else {
    print('Myndai jashta adam jashabait. $name aldaba!');
  }
}

void main(List<String> args) {
  // 1) print(checkWorkerAge(17));
  var value01 = checkWorkerAge(17);
  var value02 = checkWorkerAge(27);
  print(value01);
  print(value02);
}

bool checkWorkerAge(int workerAge) {
  if (workerAge > 18) {
    return true;
  } else {
    return false;
  }
}
