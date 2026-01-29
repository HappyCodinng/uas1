import 'user.dart';

class LoginResponse {
  final bool success;
  final String message;
  final User? user;

  LoginResponse({
    required this.success,
    required this.message,
    this.user,
  });

  factory LoginResponse.fromJSON(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'] ?? false, 
      message: json['message'] ?? "",
      user: json['data'] != null
        ? User.fromJSON(json['data'])
        : null,
    );
  }
}