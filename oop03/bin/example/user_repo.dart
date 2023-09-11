/*
Bir User bolsun
Koldonuuchu userdin atyn, jasgyn... almashtyra alsyn
*/

void main(List<String> args) {
  User user1 = User(
    id: 1,
    name: "User1",
    age: 70,
    birhtDate: "12/04/1967",
    lastName: "User0",
  );

  user1.taanysh();

  // final bulJyl = 2023;

  const pi = 3.14;

  final result = sum(10, 7);

  // bulJyl = 2024;
  // The final variable 'bulJyl' can only be set once.
  // Try making 'bulJyl' non-final.

  // user1.age = 75; // 'age' can't be used as a setter because it's final.
  // Try finding a different setter, or making 'age' non-final.
}

int sum(int a, int b) {
  return a + b;
}

/// final
class User {
  User({
    this.id,
    this.name,
    this.age,
    this.birhtDate,
    this.lastName,
  });

  int? id; // true
  String? name; // true
  String? birhtDate; // false
  String? lastName; // true
  final int? age; // false

  void taanysh() {
    print(
      'id: $id, name: $name, age: $age, birhtDate: $birhtDate, lastName: $lastName',
    );
  }
}
