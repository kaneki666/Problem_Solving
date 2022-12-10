abstract class Expertise {
  String? _expertise;

  set setExpertise(String value) => _expertise = value;

  String get getExpertise => _expertise!;

  String expertIn() {
    return "I am expert in $_expertise";
  }
}
