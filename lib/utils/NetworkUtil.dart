import 'package:flutter_play_ground/utils/Constants.dart';
import 'package:http/http.dart' as http;

Future<http.Response> getDataFromEndPoint(String endpoint) {
  return http.get(Uri.parse('${Constants.BASE_URL}$endpoint'));
}

Future<http.Response> getDataFromEndPointWithParams(
    String endpoint,
    Map<String,String> data,
    ) async {
  final response = await http.post(
    Uri.parse('${Constants.BASE_URL}$endpoint'),
    body: data,
    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
  );

  return response;
}
