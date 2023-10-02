import 'package:capitals_game/models/question.dart';

const test1 = Test(
  questionText: 'Beijing',
  imageUrl:
      'https://www.thoughtco.com/thmb/S21F_R52heCTjjBX-iVGc8yw_u4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-871980162-5b61d35646e0fb0050498370.jpg',
  variant1: Variant(text: 'Japan'),
  variant2: Variant(text: 'China', isTrue: true),
  variant3: Variant(text: 'Thailand'),
  variant4: Variant(text: 'Vietnam'),
);

const test2 = Test(
  questionText: 'New Delhi',
  imageUrl:
      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/12/22/14/new-delhi-safdarjung-tomb.jpg?width=1200&height=630&fit=crop',
  variant1: Variant(text: 'Pakistan'),
  variant2: Variant(text: 'India', isTrue: true),
  variant3: Variant(text: 'Nepal'),
  variant4: Variant(text: 'Bhutan'),
);

const test3 = Test(
  questionText: 'Kuala Lumpur',
  imageUrl:
      'https://content.r9cdn.net/rimg/dimg/1e/f2/0916f4b2-city-4723-1628829b6c4.jpg?crop=true&width=1366&height=768&xhint=1334&yhint=1020',
  variant1: Variant(text: 'Indonesia'),
  variant2: Variant(text: 'Singapore'),
  variant3: Variant(text: 'Malaysia', isTrue: true),
  variant4: Variant(text: 'Brunei'),
);

const test4 = Test(
  questionText: 'Seoul',
  imageUrl:
      'https://media.cntraveler.com/photos/5d72b0ef7ffc50000818c6c7/16:9/w_2560%2Cc_limit/Seoul%2C-Korea_GettyImages-560065591.jpg',
  variant1: Variant(text: 'China'),
  variant2: Variant(text: 'Japan'),
  variant3: Variant(text: 'North Korea'),
  variant4: Variant(text: 'South Korea', isTrue: true),
);

const test5 = Test(
  questionText: 'Tokyo',
  imageUrl:
      'https://media.cntraveler.com/photos/60341fbad7bd3b27823c9db2/4:3/w_4624,h_3468,c_limit/Tokyo-2021-GettyImages-1208124099.jpg',
  variant1: Variant(text: 'South Korea'),
  variant2: Variant(text: 'China'),
  variant3: Variant(text: 'Japan', isTrue: true),
  variant4: Variant(text: 'Taiwan'),
);

const test6 = Test(
  questionText: 'Singapore',
  imageUrl:
      'https://media.cnn.com/api/v1/images/stellar/prod/191212182124-04-singapore-buildings.jpg?q=w_3000,h_1996,x_0,y_0,c_fill',
  variant1: Variant(text: 'Malaysia'),
  variant2: Variant(text: 'Indonesia'),
  variant3: Variant(text: 'Thailand'),
  variant4: Variant(text: 'Singapore', isTrue: true),
);

const test7 = Test(
  questionText: 'Bangkok',
  imageUrl:
      'https://img.freepik.com/premium-photo/aerial-view-modern-office-buildings-bangkok-city-downtown-with-sunset-time-bangkok-thailand_35977-2750.jpg?w=2000',
  variant1: Variant(text: 'Cambodia'),
  variant2: Variant(text: 'Laos'),
  variant3: Variant(text: 'Thailand', isTrue: true),
  variant4: Variant(text: 'Myanmar'),
);

const test8 = Test(
  questionText: 'Pyongyang',
  imageUrl:
      'https://www.north-korea-travel.com/image-files/ryugyong-hotel-and-surrounding-buildings-pyongyang-capital-of-north-korea-dprk-ktg-tours.jpg',
  variant1: Variant(text: 'South Korea'),
  variant2: Variant(text: 'Japan'),
  variant3: Variant(text: 'North Korea', isTrue: true),
  variant4: Variant(text: 'China'),
);

const test9 = Test(
  questionText: 'Taipei',
  imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/20200809_Taipei%2C_Taiwan_Skyline.jpg/2705px-Mapcarta.jpg',
  variant1: Variant(text: 'China'),
  variant2: Variant(text: 'Hong Kong'),
  variant3: Variant(text: 'Taiwan', isTrue: true),
  variant4: Variant(text: 'Macau'),
);

// const test10 = Test(
//   questionText: 'Mumbai',
//   imageUrl: 'https://cdn.britannica.com/26/84526-050-45452C37/Gateway-monument-India-entrance-Mumbai-Harbour-coast.jpg',
//   variant1: Variant(text: 'Pakistan'),
//   variant2: Variant(text: 'India', isTrue: true),
//   variant3: Variant(text: 'Bangladesh'),
//   variant4: Variant(text: 'Sri Lanka'),
// );

const asiaTest = [
  test1,
  test2,
  test3,
  test4,
  test5,
  test6,
  test7,
  test8,
  test9,
  // test10,
];
