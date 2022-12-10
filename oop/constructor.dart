class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.namedConstructor({this.name, this.age});

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  factory Person.fromJsonfactory(Map<String, dynamic> json) {
    return Person(json['name'], json['age']);
  }

  factory Person.namedFromJsonfactory(Map<String, dynamic> json) {
    return Person.namedConstructor(name: json['name'], age: json['age']);
  }
  Map<String, dynamic> toJson() => {
        "name": name,
        'age:': age,
      };
}

void main(List<String> args) {
  Person p1 = Person("Mohammad Sadman", 27);
  Map<String, dynamic> jsonp1 = {"name": "Mohammad Sadman", "age": 27};

  print(Person.fromJson(jsonp1).toJson());
}
