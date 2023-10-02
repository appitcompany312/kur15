import 'package:capitals_game/models/question.dart';

const test1 = Test(
  questionText: 'Rio de Janeiro',
  imageUrl:
      'https://www.thediscoveriesof.com/wp-content/uploads/2022/10/Rio-de-Janeiro-Brazil-shutterstock_188781878-768x512.jpg.webp',
  variant1: Variant(text: 'Guyana'),
  variant2: Variant(text: 'Brazil', isTrue: true),
  variant3: Variant(text: 'Bolivia'),
  variant4: Variant(text: 'Argentina'),
);

const test2 = Test(
  questionText: 'Buenos Aires',
  imageUrl:
      'https://www.travelandleisure.com/thmb/c9zPkow9wcMqSyZ8K6U8MngvDSo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-buenos-aires-night-WHENARGENTINA0823-a9618dcef20e4488a11633bdae8e7cc3.jpg',
  variant1: Variant(text: 'Colombia'),
  variant2: Variant(text: 'Argentina', isTrue: true),
  variant3: Variant(text: 'Peru'),
  variant4: Variant(text: 'Chile'),
);

const test3 = Test(
  questionText: 'Bogotá',
  imageUrl:
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/8d/0f/9a/descubre-en-nuestros.jpg?w=600&h=400&s=1',
  variant1: Variant(text: 'Ecuador'),
  variant2: Variant(text: 'Switzerland'),
  variant3: Variant(text: 'Colombia', isTrue: true),
  variant4: Variant(text: 'Venezuela'),
);

const test4 = Test(
  questionText: 'Lima',
  imageUrl:
      'https://content.r9cdn.net/rimg/dimg/9b/c5/d5c7611f-city-2270-16441b02f5e.jpg?width=1750&height=1000&xhint=2041&yhint=782&crop=true',
  variant1: Variant(text: 'Bolivia'),
  variant2: Variant(text: 'Guyana'),
  variant3: Variant(text: 'Brazil'),
  variant4: Variant(text: 'Peru', isTrue: true),
);

const test5 = Test(
  questionText: 'Santiago',
  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGexzNMqm1LqcH6ZG8rM36B9XR5WnCqJs41w&usqp=CAU',
  variant1: Variant(text: 'Guyana'),
  variant2: Variant(text: 'Ecuador'),
  variant3: Variant(text: 'Chile', isTrue: true),
  variant4: Variant(text: 'Venezuela'),
);

const test6 = Test(
  questionText: 'Quito',
  imageUrl:
      'https://ecpe2k7qe53.exactdn.com/wp-content/uploads/2020/01/410A3DA6-3D43-4479-BE3E-7049A99C8132-scaled.jpeg',
  variant1: Variant(text: 'Peru'),
  variant2: Variant(text: 'Brazil'),
  variant3: Variant(text: 'Colombia'),
  variant4: Variant(text: 'Ecuador', isTrue: true),
);

const test7 = Test(
  questionText: 'Caracas',
  imageUrl:
      'https://cf.bstatic.com/xdata/images/hotel/max500/335069940.jpg?k=6211153071b46c3388797e3b9de21db6475762180561f5ea6dd16c9dd33020b6&o=&hp=1',
  variant1: Variant(text: 'Colombia'),
  variant2: Variant(text: 'Colombia'),
  variant3: Variant(text: 'Venezuela', isTrue: true),
  variant4: Variant(text: 'Argentina'),
);

const test8 = Test(
  questionText: 'Asunción',
  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO_U17PSfZ6YjRlmW-m-JGPFDNLXHHn0MEzA&usqp=CAU',
  variant1: Variant(text: 'Brazil'),
  variant2: Variant(text: 'Argentina'),
  variant3: Variant(text: 'Paraguay', isTrue: true),
  variant4: Variant(text: 'Chile'),
);

const test9 = Test(
  questionText: 'La Paz',
  imageUrl: 'https://lp-cms-production.imgix.net/2020-11/c395ec1c1715560f5d4319d89534b894-la-paz-cemetery.jpg',
  variant1: Variant(text: 'Ecuador'),
  variant2: Variant(text: 'Peru'),
  variant3: Variant(text: 'Bolivia', isTrue: true),
  variant4: Variant(text: 'Argentina'),
);

const test10 = Test(
  questionText: 'Georgetown',
  imageUrl: 'https://menlocoaching.com/app/uploads/2021/10/georgetown_mcdonough-1024x696.jpeg',
  variant1: Variant(text: 'Brazil'),
  variant2: Variant(text: 'Guyana', isTrue: true),
  variant3: Variant(text: 'Colombia'),
  variant4: Variant(text: 'Chile'),
);

const southAmericaTest = [
  test1,
  test2,
  test3,
  test4,
  test5,
  test6,
  test7,
  test8,
  test9,
  test10,
];
