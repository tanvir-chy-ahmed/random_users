class agemodel {
  int age;
  String birth;

  agemodel({required this.age, required this.birth});

  factory agemodel.fromjson(Map<String, dynamic> json) {
    return agemodel(age: json['age'], birth: json['date']);
  }
}
