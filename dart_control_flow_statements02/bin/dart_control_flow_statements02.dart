import 'dart:io';

// Map user = {
//   'name': 'User1',
//   'lastname': 'User1User',
//   'age': 33,
//   'login': 'user1@gmail.com',
//   'password': '1234',
// };

void main(List<String> arguments) {
  authentication();
}

// Authentication function
// 1) Salamdahsat
// 2) Login/Register
// 3) Register koldonuuchudan (name, lastname, jash, login, password)
// 4) Success (rahmat)
// 5) Login koldonuuchudan (login, passoword)
// 6) Eger tuura bolso (name, lastname, jash, login)
// 7) Eger kata bolso login & password kata jazat

void authentication() {
  var userler = [];
  var quit = '0';

  do {
    // Salamdashuu
    print('"Flutter 15" gruppasyna kosh keldiniz!'); //  bolgonu bir print()

    // Login/Register
    print('Kattaluu uchun "Y". Kiruu uchun "N" jazynyz');
    var value = stdin.readLineSync();

    if (value == 'Y') {
      print('Siz kattaluu bolumundosuz');

      stdout.write("Atynyzdy jazynyz : ");
      var name = stdin.readLineSync();

      stdout.write("Familiyanyzdy jazynyz : ");
      var lastName = stdin.readLineSync();

      stdout.write("Jashynyzdy jazynyz : ");
      var age = stdin.readLineSync();

      stdout.write("Login jazynyz : ");
      var login = stdin.readLineSync();

      stdout.write("Syr soz jazynyz : ");
      var passoword = stdin.readLineSync();

      // Fixme: bulardy irettesh kerek
      print('Name is $name');
      print('Lastname is $lastName');
      print('Age is $age');
      print('Login is $login');
      print('Pasword is $passoword'); // Fixme (passiword korunbosh kerek)
      // Todo(edliiar): userdi saktoo

      var newUser = {
        'name': name,
        'lastname': lastName,
        'age': age,
        'login': login,
        'password': passoword,
      };

      userler.add(newUser);

      stdout.write("Chyguu uchun 1  ulantuu enter kiriniz: ");
      quit = stdin.readLineSync() ?? '';

      print('Siz iygiliktuu kattaldynyz :)');
    } else if (value == 'N') {
      print('Kiruu bolumundosuz!');

      stdout.write('Login jazynyz : ');
      var login = stdin.readLineSync();

      stdout.write('Syr sozunuzdu jazynyz : ');
      var password = stdin.readLineSync();

      for (var user in userler) {
        if (login == user['login'] && password == user['password']) {
          print('Uraaa: $user');
        } else {
          print('Login je syr soz kata');
        }
      }

      stdout.write("Chyguu uchun 1  ulantuu enter kiriniz: ");
      quit = stdin.readLineSync() ?? '';
    } else {
      print('Kechiresiz berilgen maalymat KATA! Suranych tuura jazynyz');
    }
  } while (quit != '1');
}
