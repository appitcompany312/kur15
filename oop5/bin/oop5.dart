import 'user_model.dart';

void main(List<String> arguments) {
  // print('Hello world: ${oop5.calculate()}!');
  final user1 = User(
    id: 1,
    nameValue: 'Eldiiar',
    lastNameValue: 'Almazbek',
  );

  print(user1.id); // 1
  // print(user1._name) // Eldiiar
  // print(user1.lastName);

  final client1 = Client();
  client1.age;
  client1.getAge;
  client1.name = 'Eldiiar';
  client1.setName('Almazbek');
  print(client1.fullName);
}
