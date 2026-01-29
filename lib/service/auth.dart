import 'package:kostcheck/model/register.dart';
import 'package:kostcheck/model/user.dart';
import 'package:kostcheck/service/auth_api.dart';
import '../model/response.dart';

class AuthService {
  static Future<LoginResponse> login(
    String email, String password
  ) async {
    try {
      final response = await AuthApi.post(
        "login.php", {
          "email": email,
          "password": password,
        }
      );

      if(response['success'] == true) {
        return LoginResponse(
          success: true, 
          message: response['message'],
          user: User.fromJSON(response['data']),
        );
      }

      return LoginResponse(
        success: false, 
        message: response['message'] ?? "Login Gagal",
      );
    } catch (e) {
      return LoginResponse(
        success: false, 
        message: "Gagal terhubung ke server",
      );
    }
  }

  static Future<Register> register(
    String nama, String email, String nohp, String password
  ) async {
    try {
      final response1 = await AuthApi.post(
        "register.php", {
          "nama": nama,
          "email": email,
          "no_hp": nohp,
          "password": password,
        }
      );

      print("Register Response: $response1");

      return Register.fromJSON(response1);
    } catch (e) {
      print("Register Error: $e");
      return Register (
        success: false, 
        message: "Gagal terhubung ke server",
      );
    }
  }
}