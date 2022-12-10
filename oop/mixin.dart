mixin ClockIn {
  DateTime? cameIn;

  String cameInAt(String name) {
    return '$name came in at $cameIn';
  }
}

class Employee {
  String? name;
  Employee({this.name});
}

class Bartender extends Employee with ClockIn {
  String makesDrink(String name) {
    return "$name is making a drink.";
  }
}

class Nurse extends Employee with ClockIn {
  String takesTemp(String name) {
    return "$name is taking temperature of a patient.";
  }

  @override
  String cameInAt(String name) {
    return '$name came in ast $cameIn';
  }
}

void main() {
  Bartender bartender = Bartender();
  bartender.name = "Shuvo Das";
  bartender.cameIn = DateTime.now();

  print(bartender.cameInAt(bartender.name!));
  print(bartender.makesDrink(bartender.name!));

  Nurse nurse = Nurse();
  nurse.name = "Mahfuza Akter";
  nurse.cameIn = DateTime.now();

  print(nurse.cameInAt(bartender.name!));
  print(nurse.takesTemp(bartender.name!));
}
