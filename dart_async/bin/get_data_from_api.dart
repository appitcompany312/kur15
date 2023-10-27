import 'dart:convert';

import 'package:http/http.dart';

// `async` ubakyt ala tyrgan function
// `await` function dyn atkaryluusun kutuu
// `Future` kelechettegi type
// `try` atkarganga arajet kylyp kor
// `catch` bir kata bolso
void main(List<String> args) async {
  try {
    final uri = Uri.parse(url);
    final client = Client();
    final response = await client.get(uri);
    print(response);
    print(response.body);
    print('----------------------------------------------------------------');
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    print(data);
    print('----------------------------------------------------------------');
    print(data['current']['condition']);
  } catch (e) {
    print('Kata boldu: $e');
  }
}

// bir bot internette bailanyshuuu kerek
// `example` ga request jiberish kerek
// eger serverdeb joop kelse any kaitaruu  kerek
// eger joop kelbese karany korsotyy kerek
/*
  final uri = Uri.parse(url);
  final client = Client();
  final response = client.get(uri);
  print(response);
*/
/*
  try {
    String value = '12.4w';
    final double data = double.parse(value);
    print(data);
  } catch (e) {
    print('kata boldu');
  }
*/

const url = 'http://flutter.dev';
