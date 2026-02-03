import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user.dart';
import '../helper/session.dart';

class ProfileService {
  static Future<User> getProfile() async {
    final token = await SessionHelper.getToken();

    if (token == null) {
      throw Exception("Token tidak ditemukan");
    }

    final response = await http.get(
      Uri.parse("https://api.kostcheck.com/profile"),
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      return User.fromJSON(jsonDecode(response.body)['data']);
    } else {
      throw Exception("Gagal memuat profil");
    }
  }
}
