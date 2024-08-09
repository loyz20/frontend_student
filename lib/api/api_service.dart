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

  Future<AttendanceResponse> submitAttendance({
    required String token,
    required double latitude,
    required double longitude,
    required String photoPath,
  }) async {
    var request = http.MultipartRequest('POST', Uri.parse('$baseUrl/attendance'))
      ..headers['Authorization'] = 'Bearer $token'
      ..fields['latitude'] = latitude.toString()
      ..fields['longitude'] = longitude.toString()
      ..files.add(await http.MultipartFile.fromPath('photo', photoPath));

    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      return AttendanceResponse.fromJson(jsonDecode(responseBody));
    } else {
      throw ErrorResponse.fromJson(jsonDecode(responseBody));
    }
  }

  Future<AttendanceReportResponse> getAttendanceReport({
    required String token,
    required String username,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/auth/attendance/report/$username'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      return AttendanceReportResponse.fromJson(jsonDecode(response.body));
    } else {
      throw ErrorResponse.fromJson(jsonDecode(response.body));
    }
  }
}
