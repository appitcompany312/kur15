import 'student_model.dart';

void main(List<String> args) {
  StudentNamed akylai = StudentNamed(
    name: "Akylai",
    id: "01",
    avarageScore: 4.2,
    kurs: 3,
    age: 20,
    spacial: "Engeneer",
    university: "MIT",
  );

  StudentNamed akyl = StudentNamed(
    spacial: "Medical",
    kurs: 5,
    university: "Kyrgyz state med academy",
    name: "Akyl",
    age: 24,
    avarageScore: 4.5,
    id: "03",
  );

  akylai.taanysh();

  akyl.taanysh();
}
