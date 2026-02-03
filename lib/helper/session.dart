// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class SessionHelper {
  static const _tokenKey = 'token';
  static const _userIdKey = 'user_id';

  // simpan token saat login
  static Future<void> saveSession({
    required String token,
    required int userId,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
    await prefs.setInt(_userIdKey, userId);
  }

  // ambil token
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  // ambil user id
  static Future<int?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_userIdKey);
  }

  // hapus semua (logout)
  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
