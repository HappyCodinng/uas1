import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import '../model/kos.dart';

class KosApi {
  static Future<List<Kos>> getAll({
    String? search,
    String? fasilitas,
  }) async {
    String url = "${Api.baseUrl}/kos/get_all_kos.php";

    final params = <String>[];

    if(search != null && search.isNotEmpty) {
      params.add("search=$search");
    }

    if(fasilitas != null && fasilitas.isNotEmpty) {
      params.add("fasilitas=$fasilitas");
    }

    if(params.isNotEmpty) {
      url += "?${params.join("&")}";
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
