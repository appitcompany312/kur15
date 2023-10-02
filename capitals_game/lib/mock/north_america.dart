import 'package:capitals_game/models/question.dart';

const test1 = Test(
  questionText: 'Ottawa',
  imageUrl:
      'https://www.ctvnews.ca/content/dam/ctvnews/en/images/2020/8/5/ottawa-sign-byward-market-york-street-1-5052593-1635682751912.jpeg',
  variant1: Variant(text: 'Jamaica'),
  variant2: Variant(text: 'Canada', isTrue: true),
  variant3: Variant(text: 'El Salvador'),
  variant4: Variant(text: 'Costa Rica'),
);

const test2 = Test(
  questionText: 'Mexiko City',
  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS44EagjATNQ8MQxOIkJa_Mp5X9LU78ZVvzJA&usqp=CAU',
  variant1: Variant(text: 'Panama'),
  variant2: Variant(text: 'Mexiko', isTrue: true),
  variant3: Variant(text: 'Dominican Republic'),
  variant4: Variant(text: 'Canada'),
);

const test3 = Test(
  questionText: 'Havana',
  imageUrl: 'https://images.musement.com/cover/0003/03/havana-xxl-jpg_header-202667.jpeg',
  variant1: Variant(text: 'Nicaragua'),
  variant2: Variant(text: ' Jamaica'),
  variant3: Variant(text: 'Cuba', isTrue: true),
  variant4: Variant(text: 'Costa Rica'),
);

const test4 = Test(
  questionText: 'Panama City',
  imageUrl: 'https://cdn.internationalliving.com/wp-content/uploads/2018/09/Panama-RREI.jpg',
  variant1: Variant(text: 'El Salvador'),
  variant2: Variant(text: 'Mexiko'),
  variant3: Variant(text: 'Canada'),
  variant4: Variant(text: 'Panama', isTrue: true),
);
const test5 = Test(
  questionText: 'San Jose',
  imageUrl: 'https://www.bankrate.com/2021/02/25111352/car-san-jose-featured.jpg?auto=webp&optimize=high&crop=16:9',
  variant1: Variant(text: 'Dominican Republic'),
  variant2: Variant(text: 'El Salvador'),
  variant3: Variant(text: 'Costa Rica', isTrue: true),
  variant4: Variant(text: 'Mexiko'),
);

const test6 = Test(
  questionText: 'Santo Domingo',
  imageUrl:
      'https://ritmosocial.com/wp-content/uploads/2020/10/Plaza-Monumento-a-Fray-Anton-de-Montesino-malecon-Santo-Domingo.jpg',
  variant1: Variant(text: 'Honduras'),
  variant2: Variant(text: 'Nicaragua'),
  variant3: Variant(text: 'Mexiko'),
  variant4: Variant(text: 'Dominican Republic', isTrue: true),
);

const test7 = Test(
  questionText: 'Tegucigalpa',
  imageUrl: 'https://hondudiario.com/wp-content/uploads/2022/02/273307007_264060629175230_6063950074288828385_n.jpg',
  variant1: Variant(text: 'Mexiko'),
  variant2: Variant(text: 'Costa Rica'),
  variant3: Variant(text: 'Honduras', isTrue: true),
  variant4: Variant(text: 'Jamaica'),
);

const test8 = Test(
  questionText: 'Salvador',
  imageUrl: 'https://www.passporttheworld.com/wp-content/uploads/2023/04/SanSalvador9a.jpg',
  variant1: Variant(text: 'Mexico'),
  variant2: Variant(text: 'Canada'),
  variant3: Variant(text: 'El Salvador', isTrue: true),
  variant4: Variant(text: 'Dominican Republic'),
);

const test9 = Test(
  questionText: 'Managua',
  imageUrl:
      'https://thumbs.dreamstime.com/z/view-trees-life-malecon-park-managua-nicaragua-march-capital-148603272.jpg',
  variant1: Variant(text: 'Cuba'),
  variant2: Variant(text: 'Panama'),
  variant3: Variant(text: 'Nicaragua', isTrue: true),
  variant4: Variant(text: 'Costa Rica'),
);

const test10 = Test(
  questionText: 'Kingston',
  imageUrl: 'https://www.kingstonist.com/wp-content/uploads/2020/09/city-of-kingston-scaled.jpg',
  variant1: Variant(text: 'Canada'),
  variant2: Variant(text: 'Jamaica', isTrue: true),
  variant3: Variant(text: 'Costa Rica'),
  variant4: Variant(text: 'Nicaragua'),
);

const northAmericaTest = [
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
