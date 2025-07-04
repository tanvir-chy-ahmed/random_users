class registeredmodel {
  String date;

  registeredmodel({required this.date});

  factory registeredmodel.fromjson(Map<String, dynamic> json) {
    return registeredmodel(date: json['date']);
  }
}
