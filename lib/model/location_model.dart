class Streets {
  String sname;
  int snum;

  Streets({required this.sname, required this.snum});

  factory Streets.fromjson(Map<String, dynamic> json) {
    return Streets(sname: json['name'] as String, snum: json['number'] as int);
  }
}

class Location {
  Streets streets;
  String city;
  String country;
  String state;

  Location({
    required this.streets,
    required this.city,
    required this.country,
    required this.state,
  });

  factory Location.fromjson(Map<String, dynamic> json) {
    return Location(
      streets: Streets.fromjson(json['street'] as Map<String, dynamic>),
      state: json['state'],
      country: json['country'],
      city: json['city'],
    );
  }
}
