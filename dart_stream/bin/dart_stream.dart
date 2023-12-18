void main(List<String> arguments) {
  printNumbers();
}

Future<void> printNumbers() async {
  count();
  print('done');
}

Future<void> count() async {
  await Future.delayed(Duration(milliseconds: 300));
  for (int i = 0; i < 10; i++) {
    print(i);
  }
}
