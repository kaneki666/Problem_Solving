import 'abstract_gender.dart';
import 'abstract_job.dart';

class Person implements Gender, JobDes {
  String? name;
  int? age;

  @override
  String? gender;

  @override
  String? salery;

  @override
  String? title;

  // Person({this.name, this.age, String? gender,}) : super(gender: gender,);
  Person({this.name, this.age, this.gender, this.salery, this.title});
  @override
  String genderIs() {
    return "$name is a $gender";
  }

  @override
  String myTitleSalery() {
    return "$name is a $title. His Salary is $salery.";
  }
}
