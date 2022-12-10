abstract class Expertise {
  String? expertise;

  Expertise({
    this.expertise,
  });
  String expertIn() {
    return "I am expert in $expertise";
  }
}

class Profession extends Expertise {
  String? name;
  String? proffession;
  int? experience;
  Profession({
    required this.proffession,
    required this.name,
    super.expertise: "Mobile Application Development",
    this.experience = 3,
  });
  @override
  String expertIn() {
    return '$name is a $proffession. He has $experience years experience in $expertise.';
  }
}

void main(List<String> args) {
  Profession p1 = Profession(
    proffession: "Software Engineer",
    name: "Mohammad Sadman",
    // expertise: "Mobile Application Development",
    // experience: 3,
  );

  print(p1.expertIn());
}
