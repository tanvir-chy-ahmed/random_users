import 'package:practice_nested_api/util/api.dart';

class Endpoints {
  static String ENDPOINTS = '/api/?results=100';
  static Uri URL = Uri.parse(Appconfig.BASEURL + ENDPOINTS);
}
