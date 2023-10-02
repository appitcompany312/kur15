import 'package:capitals_game/models/question.dart';

const test1 = Test(
  questionText: 'What is the capital of France?',
  imageUrl: 'https://www.vdio.com/wp-content/uploads/2017/04/capital-city-of-France-scaled.jpg',
  variant1: Variant(text: 'London'),
  variant2: Variant(text: 'Paris', isTrue: true),
  variant3: Variant(text: 'Berlin'),
  variant4: Variant(text: 'Rome'),
);

const test2 = Test(
  questionText: 'What is the capital of Italy?',
  imageUrl: 'https://cdn.mappr.co/wp-content/uploads/2021/01/image-969.jpeg',
  variant1: Variant(text: 'Madrid'),
  variant2: Variant(text: 'Athens'),
  variant3: Variant(text: 'Rome', isTrue: true),
  variant4: Variant(text: 'Vienna'),
);

const test3 = Test(
  questionText: 'What is the capital of Germany?',
  imageUrl: 'https://www.berlin.de/binaries/asset/image_assets/8215661/ratio_4_3/1686824224/800x600/',
  variant1: Variant(text: 'Berlin', isTrue: true),
  variant2: Variant(text: 'Moscow'),
  variant3: Variant(text: 'Paris'),
  variant4: Variant(text: 'Madrid'),
);

const test4 = Test(
  questionText: 'What is the capital of Spain?',
  imageUrl:
      'https://a.cdn-hotels.com/gdcs/production47/d1811/56b3469c-a218-4858-8716-d39e1771c4de.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
  variant1: Variant(text: 'Lisbon'),
  variant2: Variant(text: 'Barcelona'),
  variant3: Variant(text: 'Madrid', isTrue: true),
  variant4: Variant(text: 'Rome'),
);

const test5 = Test(
  questionText: 'What is the capital of United Kingdom?',
  imageUrl: 'https://cdn.mappr.co/wp-content/uploads/2021/03/image-201.jpeg',
  variant1: Variant(text: 'London', isTrue: true),
  variant2: Variant(text: 'Dublin'),
  variant3: Variant(text: 'Edinburgh'),
  variant4: Variant(text: 'Cardiff'),
);

const test6 = Test(
  questionText: 'What is the capital of Greece?',
  imageUrl: 'https://his-discover.com/blog/philippines/storage/posts/September2020/YXLWMvlSweilHkdTL2hy.jpg',
  variant1: Variant(text: 'Istanbul'),
  variant2: Variant(text: 'Rome'),
  variant3: Variant(text: 'Athens', isTrue: true),
  variant4: Variant(text: 'Paris'),
);

const test7 = Test(
    questionText: 'What is the capital of Sweden?',
    imageUrl: 'https://www.worldatlas.com/r/w960-q80/upload/a1/28/76/shutterstock-133005938.jpg',
    variant1: Variant(text: 'Helsinki'),
    variant2: Variant(text: 'Stockholm', isTrue: true),
    variant3: Variant(text: 'Oslo'),
    variant4: Variant(text: 'Rome'));

const test8 = Test(
  questionText: 'Which city is known for its canals and gondolas?',
  imageUrl: 'https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20200917144111/iStock-576922338.jpg',
  variant1: Variant(text: 'Venice', isTrue: true),
  variant2: Variant(text: 'Madrid'),
  variant3: Variant(text: 'Athens'),
  variant4: Variant(text: 'Lisbon'),
);

const test9 = Test(
  questionText: 'Which city is famous for its beer and Oktoberfest?',
  imageUrl:
      'https://www.ctvnews.ca/polopoly_fs/1.2016413.1411222254!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg',
  variant1: Variant(text: 'Munich', isTrue: true),
  variant2: Variant(text: 'Vienna'),
  variant3: Variant(text: 'Prague'),
  variant4: Variant(text: 'Budapest'),
);

const test10 = Test(
  questionText: 'Which city is known for its historic architecture and Acropolis?',
  imageUrl:
      'https://cdn-imgix.headout.com/mircobrands-content/image/225ae5f5716f18fcd89d5aba0c8166d3-Parthenon%20Athens%20-Frieze.jpg?auto=format&w=713.0666666666667&h=458.4&q=90&fit=crop&ar=14%3A9',
  variant1: Variant(text: 'Athens', isTrue: true),
  variant2: Variant(text: 'Rome'),
  variant3: Variant(text: 'Berlin'),
  variant4: Variant(text: 'Budapest'),
);

const test11 = Test(
  questionText: 'Which city is known for its coffee shops and historic canals?',
  imageUrl: 'https://media.nomadicmatt.com/2021/amsterdamneighborhood1.jpg',
  variant1: Variant(text: 'Amsterdam', isTrue: true),
  variant2: Variant(text: 'Prague'),
  variant3: Variant(text: 'Vienna'),
  variant4: Variant(text: 'Lisbon'),
);

const test12 = Test(
  questionText: 'Which city is known for its historic Red Square?',
  imageUrl: 'https://www.advantour.com/russia/images/moscow/moscow_red-square1.jpg',
  variant1: Variant(text: 'Moscow', isTrue: true),
  variant2: Variant(text: 'Paris'),
  variant3: Variant(text: 'Vienna'),
  variant4: Variant(text: 'Budapest'),
);

const test13 = Test(
  questionText: 'What is the capital city of Hungary?',
  imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Budapest_Hungarian_Parliament_%2831363963556%29.jpg/1024px-Budapest_Hungarian_Parliament_%2831363963556%29.jpg',
  variant1: Variant(text: 'Budapest', isTrue: true),
  variant2: Variant(text: 'Rome'),
  variant3: Variant(text: 'Berlin'),
  variant4: Variant(text: 'Madrid'),
);

const test14 = Test(
  questionText: 'Warsaw',
  imageUrl:
      'https://content.r9cdn.net/rimg/dimg/e1/21/4749ed25-city-16954-1645c375dd9.jpg?width=1366&height=768&xhint=2135&yhint=2124&crop=true',
  variant1: Variant(text: 'Switzerland'),
  variant2: Variant(text: 'France'),
  variant3: Variant(text: 'Czech'),
  variant4: Variant(text: 'Poland', isTrue: true),
);

const test15 = Test(
  questionText: 'Vienna',
  imageUrl:
      'https://sothebys-com.brightspotcdn.com/dims4/default/01495a2/2147483647/strip/true/crop/606x340+0+0/resize/684x384!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot-migration.s3.amazonaws.com%2F1a%2F4b%2Fd1%2F1b4eca7ba657d6025515c2884551f4e3f4598f926b9fc3ccdbe08beabc%2Fvienna-final.jpg',
  variant1: Variant(text: 'Slovakia'),
  variant2: Variant(text: 'Poland'),
  variant3: Variant(text: 'Austria', isTrue: true),
  variant4: Variant(text: 'Latvia'),
);

const test16 = Test(
  questionText: 'Bratislava',
  imageUrl:
      'https://media.cnn.com/api/v1/images/stellar/prod/230118112529-03-bratislava-sci-fi-city-ufo-tower.jpg?c=original',
  variant1: Variant(text: 'Latvia'),
  variant2: Variant(text: 'Poland'),
  variant3: Variant(text: 'Netherlands'),
  variant4: Variant(text: 'Slovakia', isTrue: true),
);

const test17 = Test(
  questionText: 'Riga',
  imageUrl:
      'https://images.ctfassets.net/nwbqij9m1jag/4dxzxt15VKKWwiAqMkACyU/90163ed13d944d650722683f7f308bdf/city-hall-square-old-town-riga.jpg',
  variant1: Variant(text: 'Czech'),
  variant2: Variant(text: 'Poland'),
  variant3: Variant(text: 'Latvia', isTrue: true),
  variant4: Variant(text: 'Italy'),
);

const test18 = Test(
  questionText: 'Berne',
  imageUrl: 'https://cdn.generationvoyage.fr/2018/11/berne-centre-ville-historique-suisse-e1541582712521.jpg',
  variant1: Variant(text: 'Poland'),
  variant2: Variant(text: 'Latvia'),
  variant3: Variant(text: 'Switzerland', isTrue: true),
  variant4: Variant(text: 'Germany'),
);

const test19 = Test(
  questionText: 'Prague',
  imageUrl: 'https://freewalkingtour.com/wp-content/uploads/2021/10/prague-castle1.jpg',
  variant1: Variant(text: 'Italy'),
  variant2: Variant(text: 'Czech', isTrue: true),
  variant3: Variant(text: 'Poland'),
  variant4: Variant(text: 'Italy'),
);

const europeTest = [
  test1,
  test2,
  test3,
  test4,
  test5,
  test6,
  test7,
  test8,
  test9,
  test11,
  test12,
  test13,
  test14,
  test15,
  test16,
  test17,
  test18,
  test19,
];
