// lib/api/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/response_models.dart';

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<LoginResponse> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      throw ErrorResponse.fromJson(jsonDecode(response.body));
    }
  }
}
