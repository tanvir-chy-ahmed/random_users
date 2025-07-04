class PictureModel {
  String large;

  PictureModel({required this.large});

  factory PictureModel.fromjson(Map<String, dynamic> json) {
    return PictureModel(large: json['large'] as String);
  }
}
