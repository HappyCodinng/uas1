import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kostcheck/helper/session.dart';
import 'package:kostcheck/model/register.dart';
import 'package:kostcheck/screen/login.dart';
import 'package:kostcheck/service/auth_api.dart';
import '../model/response.dart';
import '../model/user.dart';

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
        final user = User.fromJSON(response['data']);
        
        await SessionHelper.saveSession(
          token: response['token'], 
          userId: response['user_id'],
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

      // print("Register Response: $response1");

      return Register.fromJSON(response1);
    } catch (e) {
      // print("Register Error: $e");
      return Register (
        success: false, 
        message: "Gagal terhubung ke server",
      );
    }
  }

  static Future<void> logout(BuildContext context) async {
    await SessionHelper.clear();
    
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginPage(),
      ),
      (route) => false,
    );
  }
}