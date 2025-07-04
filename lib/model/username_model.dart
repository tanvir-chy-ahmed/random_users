class usernamemodel {
  String username;

  usernamemodel({required this.username});

  factory usernamemodel.fromjson(Map<String, dynamic> json) {
    return usernamemodel(username: json['username']);
  }
}
