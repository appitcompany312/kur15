// ignore_for_file: unused_local_variable

void main01(List<String> args) {
  // Map `{}` bir sozduk katary tushunsok bolot
  /* 
  key (achkych sozu) - value(maanisi)
  hello : Salam
  name: Ysym
  */

  var map01 = {'hello': 'Salam', 'name': 'Ysym'};
  print(map01['hello']);
  print(map01['name']);
  map01['name'] = 'Kurs 15';
  print(map01['name']);
}

void main03(List<String> args) {
  var kurs15 = {
    1: 'Jannat',
    2: 'Gulsana',
    3: 'Aiperi',
    4: 'Mairambek',
    5: 'Emil',
  };
  print(kurs15[1]);
  kurs15[1] = 'Jannat ejei';
  print(kurs15[1]);

  var map01 = {
    1.1: "Bir butun ondon bir",
  };
  var map02 = {
    "Bir butun ondon bir": 1.1,
  };
}

void main(List<String> args) {
  var data = getWeather();
  print(data['country']);
  print(data['city']);
  print(data['temp']);
  print(data['lat']);
  print(data['long']);
  print(data['nym']);
  print(data['speed']);
}

Map getWeather() {
  return {
    'city': 'Bishkek',
    'temp': 42.3,
    'country': 'Kyrgyzstan',
    'lat': 42.8746,
    'long': 74.5698,
    'nym': 68,
    'speed': 2.4,
  };
}
