// import 'package:http/http.dart';

const url = 'http://api.weatherapi.com/v1/current.json?key=e9d7452a41614cdea32164320231910&q=bishkek';

void main(List<String> arguments) {
  count();
}

void count() async {
  await asynCount1();
  await asynCount();
  print('4');
  print('5');
}
// 4,5,1,2,3,-2,-1,0

// `async` functions ubakyt ala turgan
Future<void> asynCount() async {
  await Future.delayed(Duration(seconds: 1));
  print('1');
  print('2');
  print('3');
}

Future<void> asynCount1() async {
  await Future.delayed(Duration(seconds: 2));
  print('-2');
  print('-1');
  print('0');
}


