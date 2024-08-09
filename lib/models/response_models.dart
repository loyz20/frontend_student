class LoginResponse {
  final String status;
  final String message;
  final TokenData data;

  LoginResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'],
      message: json['message'],
      data: TokenData.fromJson(json['data']),
    );
  }
}

class TokenData {
  final String token;

  TokenData({
    required this.token,
  });

  factory TokenData.fromJson(Map<String, dynamic> json) {
    return TokenData(
      token: json['token'],
    );
  }
}

class ErrorResponse {
  final String status;
  final String code;
  final String message;

  ErrorResponse({
    required this.status,
    required this.code,
    required this.message,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      status: json['status'],
      code: json['code'],
      message: json['message'],
    );
  }
}

class AttendanceResponse {
  final String status;
  final String message;
  final AttendanceData data;

  AttendanceResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AttendanceResponse.fromJson(Map<String, dynamic> json) {
    return AttendanceResponse(
      status: json['status'],
      message: json['message'],
      data: AttendanceData.fromJson(json['data']),
    );
  }
}

class AttendanceData {
  final String checkInTime;
  final String photoUrl;

  AttendanceData({
    required this.checkInTime,
    required this.photoUrl,
  });

  factory AttendanceData.fromJson(Map<String, dynamic> json) {
    return AttendanceData(
      checkInTime: json['check_in_time'],
      photoUrl: json['photo_url'],
    );
  }
}


class AttendanceReportResponse {
  final String status;
  final String message;
  final List<AttendanceData> data;

  AttendanceReportResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AttendanceReportResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<AttendanceData> attendanceList = list.map((i) => AttendanceData.fromJson(i)).toList();

    return AttendanceReportResponse(
      status: json['status'],
      message: json['message'],
      data: attendanceList,
    );
  }
}
