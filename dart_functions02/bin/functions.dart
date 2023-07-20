void ozungDuTaanyshtyr01(String name, int jash, String meken, String university, num salmak, num boy) {
  print(
    'Menin atyn $name. Men $jash jashtamyn. Mekenim $meken. Men $university okuym. Menin salmagym $salmak, boyum $boy.',
  );
}

void ozungDuTaanyshtyr02({
  required String name,
  required int jash,
  required String meken,
  required String university,
  required num salmak,
  required num boy,
}) {
  print(
    'Menin atyn $name. Men $jash jashtamyn. Mekenim $meken. Men $university okuym. Menin salmagym $salmak, boyum $boy.',
  );
}

// ozungDuTaanyshtyr01('Eldiiar', 22, 'Kyrgyzstan', 'Politehte', 65.7, 169);

/*
  ozungDuTaanyshtyr02(
    name: 'Samat',
    meken: 'Kyrgyzstan',
    boy: 172,
    salmak: 82,
    university: 'Harvardta',
    jash: 18,
  );
*/

void ozungDuTaanyshtyr03({
  required String name,
  int jash = 18,
  String meken = 'Kyrgyzstan',
  required String university,
  required num salmak,
  required num boy,
}) {
  print(
    'Menin atym $name. Men $jash jashtamyn. Mekenim $meken. Men $university okuym. Menin salmagym $salmak, boyum $boy.',
  );
}

void main(List<String> args) {
  ozungDuTaanyshtyr03(
    name: 'User1',
    university: 'MIT',
    salmak: 80,
    boy: 178,
  );

  ozungDuTaanyshtyr03(
    name: 'User2',
    university: 'KIOTO',
    salmak: 62,
    boy: 165,
    jash: 81,
    meken: 'Japan',
  );

  birgeBitdiKosh();
}

void birgeBitdiKosh() {
  print('1+1=${1 + 1}');
}
