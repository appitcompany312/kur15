class User {
  const User({
    required this.id,
    required String nameValue,
    required String lastNameValue,
  })  : _name = nameValue,
        _lastName = lastNameValue;

  final int id;
  // private
  final String _name;
  // public
  final String _lastName;

  void sendTx() {
    print('sendTx ishtedi');
  }
}

class Client {
  String? _name;
  String? _lastName;
  int? age;

  // getter ichki maalymatty syrtka beret
  String get fullName {
    return '$_name $_lastName';
  }

  int? get getAge {
    return age;
  }

  // syrttan maalymat alyp ichke beret
  set name(String name) {
    _name = name;
  }

  void setName(String lastName) {
    _lastName = lastName;
  }
}
