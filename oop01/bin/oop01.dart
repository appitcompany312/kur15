void main(List<String> arguments) {
  String name = "Flutter kurs 15";
  int age = 30;
  double time = 17.8;
  bool isComplated = false;

  List<String> names = ["Manas", "Semetei"];
  List<int> ages = [20, 30];
  List<double> times = [17.8, 18.8];
  List<bool> isComplateds = [true, false];

  dynamic dynamic01 = 12.2;

  User aktan = User("Aktan", "Asanov", 3, "aktam@gmail.com");

  print(aktan.name);
  print(aktan.lastName);
  print(aktan.age);
  print(aktan.email);

  User akylai = User("Akylai", "Asanova", 3, "akylai@gmail.com");

  print(aktan.age > akylai.age);

  print(aktan);
  print(akylai);

  var name2 = "Flutter kurs 16";
}

class User {
  User(
    this.name,
    this.lastName,
    this.age,
    this.email,
  );

  String name;
  String lastName;
  int age;
  String email;
}

/*
mame -> string
lastname -> string
email -> string
phoneNumber -> string
address -> string
password -> string
age -> int
amount -> double
isrEgistered -> bool

user.name
user.lastName
user.email
*/
/*
<ReturnType> <funcName>(){
  ... commands...
}
*/

String sayHello() {
  return "Hello";
}
