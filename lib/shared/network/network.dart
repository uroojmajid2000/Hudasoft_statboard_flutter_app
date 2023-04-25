import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:statboard_flutter_app/resources/constants.dart';

class NetworkHelper {
  static int loginStatus = 0;

  static Future request({
    required String url,
    Map<String, dynamic>? data,
    String token = '',
    String method = 'GET',
  }) async {
    Map<String, String> headers = {};
    headers['Authorization'] = 'Bearer $token';
    if (method == 'POST') {
      headers['Content-Type'] = 'application/json';
    }
    var request = http.Request(method, Uri.parse('$kHost$url'));
    request.body = jsonEncode(data);
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    var res = await response.stream.bytesToString().then((value) {
      // print("res value: ");
      // print(value);
      return jsonDecode(value);
    });

    // print("response: ");

    // print(response.statusCode);
    loginStatus = response.statusCode;

    if (response.statusCode == 200 || response.statusCode == 201) {
      // print("Network success");
      return res;
    } else {
      // print("Network error");
      throw Exception(res['message']);
    }
  }
}
