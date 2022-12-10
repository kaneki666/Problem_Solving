import 'encapsulation.dart';

enum Gender { male, female }

class Profession extends Expertise {
  String? name;
  String? proffession;
  int? experience;
  Gender? gender;
  Profession({
    required this.proffession,
    required this.name,
    this.experience = 3,
    this.gender,
  });

  @override
  String expertIn() {
    return '$name is a $proffession. He has $experience years experience.';
  }
}

void main() {
  Profession p1 = Profession(
    name: "Mohammad Sadman",
    proffession: "SoftWare Engineer",
  );
  String result = p1.expertIn();
  print(result);
}
