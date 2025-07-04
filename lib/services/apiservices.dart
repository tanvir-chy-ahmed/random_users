import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_nested_api/model/model.dart';
import 'package:practice_nested_api/util/endpoints.dart';

class Apiservices {
  Future<List<usersmodel>> fetchData() async {
    final response = await http.get(Endpoints.URL);

    final jsondata = jsonDecode(response.body);
    final results = jsondata['results'] as List<dynamic>;
    return results.map((postjson) => usersmodel.fromjson(postjson)).toList();
  }
}
