/*
bir function 2 san alat. ekoonu koshsun, jyiyintygyn artka kaitarsyn
*/

void main(List<String> args) {
  var value = summa01(7, 8);
  print(value);

  print(summa01(4, 5));

  print(summa02(1, 1));
}

num summa01(num x1, num x2) {
  var result = x1 + x2;
  return result;
}

num summa02(num x1, num x2) {
  return x1 + x2;
}
