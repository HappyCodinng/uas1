import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import '../model/kos.dart';
import '../widget/home/search.dart';

class KosApi {
  static Future<List<Kos>> getAll({String? search}) async {
    String url = "${Api.baseUrl}/kos/get_all_kos.php";

    if(search != null && search.isNotEmpty) {
      url += "?search=$Search";
    }
    final res = await http.get(Uri.parse(url));
    final json = jsonDecode(res.body);

    if (json['status'] == true) {
      return (json['data'] as List)
          .map((e) => Kos.fromJson(e))
          .toList();
    } else {
      throw Exception("Gagal mengambil data kos");
    }
  }
}
