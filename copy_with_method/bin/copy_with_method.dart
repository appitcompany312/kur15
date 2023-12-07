class User {
  const User({
    required this.name,
    required this.email,
    required this.address,
    required this.phoneNumber,
  });

  final String name;
  final String email;
  final String address;
  final String phoneNumber;

  User copyWith({
    String? name,
    String? email,
    String? address,
    String? phoneNumber,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      address: address ?? this.address,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}

void main(List<String> arguments) {
  final user01 = User(
    name: 'John',
    email: 'johndoe@me.com',
    address: '123 Main St.',
    phoneNumber: '123-456-7890',
  );

  print(user01.name);
  print(user01.email);
  print(user01.address);
  print(user01.phoneNumber);

  final user02 = user01.copyWith(phoneNumber: '098-765-4321');

  print(user02.name);
  print(user02.email);
  print(user02.address);
  print(user02.phoneNumber);

  final user03 = user02.copyWith(address: '456 Oak St.');

  print(user03.name);
  print(user03.email);
  print(user03.address);
  print(user03.phoneNumber);
}
