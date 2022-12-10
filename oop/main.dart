import 'person.dart';

void main() {
  Person p1 = Person(
    name: "Mohammad Sadman",
    age: 27,
    gender: "Male",
    title: "Software Engineeer",
    salery: '\$5000',
  );
  // p1.gender = "Male";
  print(
    p1.myTitleSalery(),
  );
}
