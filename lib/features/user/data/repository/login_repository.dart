import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:statboard_flutter_app/features/user/data/model/login_model.dart';

class LoginRepository {
  Future<Login> login(String email, String password) async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('http://ec2-3-12-238-2.us-east-2.compute.amazonaws.com:8002/api/User/Login'));
    request.body = json.encode({
      "email": email,
      "password": password,
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var jsonString = await response.stream.bytesToString();
      return loginFromJson(jsonString);
    } else {
      throw Exception('Failed to login');
    }
  }
}