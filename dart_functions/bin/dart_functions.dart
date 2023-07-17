void main01() {
  String group = 'Flutter kurs 15';
  print(group);
  print('Dart sabak 03');
  print(12);
  print(34.45);
}

void main02() {
  birgeBirdiKosh();
  // dynamic b = summa(12, 34);
  ayirma(34, 12);
}

void birgeBirdiKosh() {
  print(1 + 1);
}

void summa(num san1, num san2) {
// 1) bul function koldonuuchudan 2 san alsyn

// 2) algan 2 sandy koshsun
  num result = san1 + san2;

// 3) result console chygarsyn
  print(result);
}

void ayirma(num san1, num san2) {
  // 1) koldonuuchudan 2 san al

  // 2) birinchisinen ekinchisin kemit
  num result = san1 - san2;

  // 3) resultty colsolgo jaz
  print(result);
}
