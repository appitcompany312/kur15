void main(List<String> arguments) {
  salamBer01('Flutter Kurs 15');

  salamBer02();
  salamBer02('Bishkek');

  salamBer03();
  salamBer03('Osh');

  jetiAtangdyAitNamed(
    'Erkinbek',
    'Kengeshbek',
    'Atakan',
    'Jalja',
    'Kerimbai',
    'Kyrmankojo',
    'Atakozu',
  );

  jetiAtangdyAit(
    birinchi: 'Erkinbek',
    ekinchi: 'Kengeshbek',
    uchunchu: 'Atakan',
    tortunchu: 'Jalja',
    beshinchi: 'Kerimbai',
    altynchy: 'Manas',
  );
}

void salamBer01(String name) {
  print('01 Salam $name :)');
}

// `null` --> ech nerse jok (boshtuk, math 0)
void salamBer02([String? name]) {
  print('02 Salam $name :)');
}

void salamBer03([String name = 'Dart']) {
  print('03 Salam $name :)');
}

// `required` --> sozsuz ber
void jetiAtangdyAitNamed(
  String birinchi,
  String ekinchi,
  String uchunchu,
  String tortunchu,
  String beshinchi, [
  String altynchy = 'Kyrmankojo',
  String jetinchi = 'Atakozu',
]) {
  print('1-$birinchi, 2-$ekinchi, 3-$uchunchu, 4-$tortunchu, 5-$beshinchi, 6-$altynchy, 7-$jetinchi');
}

void jetiAtangdyAit({
  required String birinchi,
  required String ekinchi,
  required String uchunchu,
  required String tortunchu,
  required String beshinchi,
  String altynchy = 'Kyrmankojo',
  String jetinchi = 'Atakozu',
}) {
  print('1-$birinchi, 2-$ekinchi, 3-$uchunchu, 4-$tortunchu, 5-$beshinchi, 6-$altynchy, 7-$jetinchi');
}
