import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import '../model/kos.dart';

class KosApi {
  static Future<List<Kos>> getAll() async {
    final response = await http.get(
      Uri.parse("${Api.baseUrl}/kos/get_all_kos.php"),
    );

    final json = jsonDecode(response.body);

    if (json['status'] == true) {
      return (json['data'] as List)
          .map((e) => Kos.fromJson(e))
          .toList();
    } else {
      throw Exception("Gagal mengambil data kos");
    }
  }
}
