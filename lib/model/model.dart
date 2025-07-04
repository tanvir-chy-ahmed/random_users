/*
**************************************************
*        📱 Mobile App Developer - Tanvir         *
*------------------------------------------------ *
*  🚀 Native & Hybrid App Development Expert      *
*  💼 Tech Stack: Flutter | Jetpack | Firebase    *
*  📧 Email: dev.tanvirchy269@gmail.com           *
*  🌐 GitHub: https://github.com/tanvir-chy-ahmed *
*  📍 Location: Bangladesh                        *
*                                                 *
*  Need an app? Let’s build something great!      *
**************************************************
*/
import 'package:practice_nested_api/model/age_model.dart';
import 'package:practice_nested_api/model/location_model.dart';
import 'package:practice_nested_api/model/name_model.dart';
import 'package:practice_nested_api/model/picture_model.dart';
import 'package:practice_nested_api/model/registered_model.dart';
import 'package:practice_nested_api/model/username_model.dart';

class usersmodel {
  String gender;
  String phone;
  String nationality;
  String email;
  Location location;
  PictureModel picture;
  NameModel fullname;
  agemodel age;
  usernamemodel username;
  registeredmodel date;

  usersmodel({
    required this.gender,
    required this.location,
    required this.email,
    required this.picture,
    required this.fullname,
    required this.phone,
    required this.nationality,
    required this.age,
    required this.username,
    required this.date,
  });

  factory usersmodel.fromjson(Map<String, dynamic> json) {
    return usersmodel(
      gender: json['gender'] as String,
      email: json['email'] as String,
      location: Location.fromjson(json['location']),
      picture: PictureModel.fromjson(json['picture']),
      fullname: NameModel.fromjson(json['name']),
      phone: json['phone'],
      nationality: json['nat'],
      age: agemodel.fromjson(json['dob']),
      //array name here must be and item of array sub
      username: usernamemodel.fromjson(json['login']),
      date: registeredmodel.fromjson(json['registered']),
    );
  }
}
