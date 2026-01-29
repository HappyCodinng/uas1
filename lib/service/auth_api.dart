import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';

class AuthApi {
  static Future<Map<String, dynamic>> post(
    String endpoint, Map<String, dynamic> body
  ) async {
    final url = Uri.parse("${Api.baseUrl}/auth/$endpoint");
    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode(body),
    );
    return jsonDecode(response.body);
  }
}