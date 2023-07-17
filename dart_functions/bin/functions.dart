void sayHello() {
  print('hello');
  sayBay();
}

void sayBay() {
  print('Bay bay');
}

void main(List<String> args) {
  num result01 = summa(12, 34);
  print(result01);

  num result02 = ayirma(34, 12);
  print(result02);

  var result03 = taanysh('Argen');
  print(result03);

  sayHello();
}

/*
Bir function

1) return type
2) name
3) jonokoi kasha `()`
4) denesi `{}`
*/

// `num` function dyn artka kaitargan tibi (return type)
// `summa` function dyn aty
// `()` function nym ozun bildiret
// `num san1` functian ala turgan 1-parametr
// `,` parametrlerdi biri-birinen bolup turuu uchun
// `num san2` functian ala turgan 2-parametr
// `{}` function dyn denesi (atkaryla turgan ishter uchunun ichine jazylat)
// `return` artka kaitaruu (function butkonkondon kiyin)
// `san1 + san2` summasy
// `;` bir operation(kommanda) butishun bildiret
num summa(num san1, num san2) {
  return san1 + san2;
}

num ayirma(num san1, num san2) {
  return san1 - san2;
}

String taanysh(String name) {
  return 'Salam menin atym $name';
}
