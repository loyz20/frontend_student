// lib/models/response_models.dart

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
