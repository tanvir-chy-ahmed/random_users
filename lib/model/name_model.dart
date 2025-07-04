class NameModel {
  String title;
  String first;
  String last;

  NameModel({required this.title, required this.first, required this.last});

  factory NameModel.fromjson(Map<String, dynamic> json) {
    return NameModel(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }

  String get fullname => '$title $first $last';
}
