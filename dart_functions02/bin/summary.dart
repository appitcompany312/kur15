// `void` function butkondon kiyin artka ech nerse kaitaryp berbeit
// `ozungDuTaanyshtyr03` function aty
// `()` function belgisi (chakyrylyshy)
// `{}` named parametrs
// `required String name` parametr (sozsuz berile turgan parametr)
// `required` parametr sozsuz berilishi kerek
// `String` parametrdin tibi(turu)
// `name` parametrdin aty (atalyshy)
// `int jash = 18,` parametr (sozsuz emes parametr)
// `int` parametrdin tibi(turu)
// `jash` parametrdin aty (atalyshy)
// `=` user parametrdi berbese by default maanisin beret
// `18` by default maanisi
// `{}` body (functiondyn denesi)
// `print` konsolgo jazuuchu function
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

// return-type name ({parametrs}) {commands}
