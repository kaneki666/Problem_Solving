class Car {
  void driving() {
    print("driving car 1");
  }
}

class Honda extends Car {
  //override method overrides generic driving method
  @override
  void driving() {
    print("driving car 2");
    super.driving(); //calls generic driving method
  }
}

void main() {
  Honda car1 = new Honda();
  car1.driving();
}
