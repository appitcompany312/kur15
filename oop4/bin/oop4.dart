void main(List<String> arguments) {
  // final user1 = User('Jakshylyk', 'Amanov', 28, 'Mugalim', '0000');
  // final user2 = User(
  //   name: "Jakshylyk",
  //   firstName: 'Amanov',
  //   profession: 'Mugalim',
  //   age: 28,
  //   nation: 'Kyrgyz',
  //   tuulganJeri: 'Kyrgyzstan',
  //   password: '0001',
  // );

  // final user3 = User(
  //   name: "Jakshylyk",
  //   firstName: 'Amanov',
  //   profession: 'Mugalim',
  //   age: 28,
  //   password: '0001',
  // );

  // final user4 = User(
  //   'Jakshylyk',
  //   'Amanov',
  //   age: 28,
  //   password: '0002',
  //   nation: 'Kyrgyz',
  //   profession: 'Mugalim',
  //   tuulganJeri: 'Kyrgyzstan',
  // );

  final user4 = User(
    'Jakshylyk',
    'Amanov',
    age: 28,
    password: '0002',
    profession: 'Mugalim',
  );

  print(user4.name); // 'Jakshylyk'
  print(user4.firstName); // 'Amanov'
  print(user4.tuulganJeri); // 'Kyrgyzstan'
  print(user4.profession); // 'Mugalim'
  print(user4.nation); // 'Kyrgyz'
}

class User {
  /// 1) Jonokoy Contrustor
  // const User(
  //   this.name,
  //   this.firstName,
  //   this.age,
  //   this.nation,
  //   this.profession,
  //   this.tuulganJeri,
  //   this.password,
  // );

  /// 1.2) Jonokoy Contrustor (default)
  // const User(
  //   this.name,
  //   this.firstName,
  //   this.age,
  //   this.profession,
  //   this.password, [
  //   this.nation = 'Kyrgyz',
  //   this.tuulganJeri = 'Kyrgyzstan',
  // ]);

  // 2) Atama Contrustor
  // const User({
  //   required this.name,
  //   required this.firstName,
  //   required this.age,
  //   required this.nation,
  //   required this.profession,
  //   required this.tuulganJeri,
  //   required this.password,
  // });

  /// 2.1) Atama Contrustor (default)
  // const User({
  //   required this.name,
  //   required this.firstName,
  //   required this.age,
  //   this.nation = 'Kyrgyz',
  //   required this.profession,
  //   this.tuulganJeri = 'Kyrgyzstan',
  //   required this.password,
  // });

  ///  3) Complex Contrustor
  // const User(
  //   this.name,
  //   this.firstName, {
  //   required this.age,
  //   required this.nation,
  //   required this.profession,
  //   required this.tuulganJeri,
  //   required this.password,
  // });

  /// 3.1) Complex Contrustor (default)
  const User(
    this.name,
    this.firstName, {
    required this.age,
    this.nation = 'Kyrgyz',
    required this.profession,
    this.tuulganJeri = 'Kyrgyzstan',
    required this.password,
  });

  final String name;
  final String firstName;
  final int age;
  final String nation;
  final String profession;
  final String tuulganJeri;
  final String password;
}
