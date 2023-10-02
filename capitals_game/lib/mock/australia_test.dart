import 'package:capitals_game/models/question.dart';

const test1 = Test(
  questionText: 'Canberra',
  imageUrl:
      'https://www.telegraph.co.uk/content/dam/travel/2023/05/15/TELEMMGLPICT000335701757_trans_NvBQzQNjv4BqpVlberWd9EgFPZtcLiMQf0Rf_Wk3V23H2268P_XkPxc.jpeg?imwidth=960',
  variant1: Variant(text: 'Sydney'),
  variant2: Variant(text: 'Canberra', isTrue: true),
  variant3: Variant(text: 'Melbourne'),
  variant4: Variant(text: 'Brisbane'),
);

const test2 = Test(
  questionText: 'Sydney',
  imageUrl: 'https://media.timeout.com/images/103161245/image.jpg',
  variant1: Variant(text: 'Melbourne'),
  variant2: Variant(text: 'Perth'),
  variant3: Variant(text: 'Sydney', isTrue: true),
  variant4: Variant(text: 'Brisbane'),
);

const test3 = Test(
  questionText: 'Melbourne',
  imageUrl:
      'https://cdn.britannica.com/64/190464-050-B74E1FD9/view-central-business-district-Melbourne-train-station.jpg',
  variant1: Variant(text: 'Sydney'),
  variant2: Variant(text: 'Melbourne', isTrue: true),
  variant3: Variant(text: 'Perth'),
  variant4: Variant(text: 'Hobart'),
);

const test4 = Test(
  questionText: 'Perth',
  imageUrl:
      'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/crm/perthau/Elizabeth-Quay-Perth-Aerial-Day_20EBD597-5056-A36A-0C94E88061AF0DB8-20ebd4565056a36_20ebd5fa-5056-a36a-0cdcb26f03782625.jpg',
  variant1: Variant(text: 'Adelaide'),
  variant2: Variant(text: 'Darwin'),
  variant3: Variant(text: 'Perth', isTrue: true),
  variant4: Variant(text: 'Hobart'),
);

const test5 = Test(
  questionText: 'Adelaide',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Adelaide_skyline%2C_December_2022.jpg',
  variant1: Variant(text: 'Perth'),
  variant2: Variant(text: 'Brisbane'),
  variant3: Variant(text: 'Adelaide', isTrue: true),
  variant4: Variant(text: 'Sydney'),
);

const test6 = Test(
  questionText: 'Darwin',
  imageUrl:
      'https://businessevents.australia.com/content/businessevents/en/destinations/darwin/industry-sectors/jcr:content/mainParsys/imagewithcaption/LargeImageTile/largeImageSrc.adapt.740.medium.jpg',
  variant1: Variant(text: 'Hobart'),
  variant2: Variant(text: 'Darwin', isTrue: true),
  variant3: Variant(text: 'Canberra'),
  variant4: Variant(text: 'Brisbane'),
);

const test7 = Test(
  questionText: 'Hobart',
  imageUrl:
      'https://media.cnn.com/api/v1/images/stellar/prod/190611133147-hobart-tasmania-things-to-do-henry-jones-art-hotel-01-restricted.jpg?q=w_2567,h_1711,x_0,y_0,c_fill/h_618',
  variant1: Variant(text: 'Perth'),
  variant2: Variant(text: 'Darwin'),
  variant3: Variant(text: 'Hobart', isTrue: true),
  variant4: Variant(text: 'Sydney'),
);

const test8 = Test(
  questionText: 'Brisbane',
  imageUrl:
      'https://lp-cms-production.imgix.net/2019-06/81603585.jpg?auto=format&w=1920&h=640&fit=crop&crop=faces,edges&q=75',
  variant1: Variant(text: 'Melbourne'),
  variant2: Variant(text: 'Perth'),
  variant3: Variant(text: 'Brisbane', isTrue: true),
  variant4: Variant(text: 'Adelaide'),
);

const test9 = Test(
  questionText: 'Gold Coast',
  imageUrl:
      'https://lp-cms-production.imgix.net/features/2017/10/shutterstockRF_550879138-d5b90d9affbb.jpg?auto=format&q=75&w=1920',
  variant1: Variant(text: 'Newcastle'),
  variant2: Variant(text: 'Gold Coast', isTrue: true),
  variant3: Variant(text: 'Sunshine Coast'),
  variant4: Variant(text: 'Wollongong'),
);

const test10 = Test(
  questionText: 'Newcastle',
  imageUrl:
      'https://www.newcastle.nsw.gov.au/-/media/CN/Images/Homepage/Newcastle-city-CBD/City-skyline/City-Skyline2.jpg?h=467&iar=0&w=700&rev=89a3c63d3ec645e291c5b63b1334f9b3',
  variant1: Variant(text: 'Gold Coast'),
  variant2: Variant(text: 'Newcastle', isTrue: true),
  variant3: Variant(text: 'Sunshine Coast'),
  variant4: Variant(text: 'Wollongong'),
);

const australiaTest = [
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
