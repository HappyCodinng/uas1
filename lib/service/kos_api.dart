import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';
import '../model/kos.dart';

class KosApi {
  static Future<List<Kos>> getAll({
    String? search,
    String? fasilitas,
    int? maxHarga,
    int? maxJarak,
  }) async {
    String url = "${Api.baseUrl}/kos/get_all_kos.php?";

    if (search != null && search.isNotEmpty) {
      url += "search=$search&";
    }

    if (fasilitas != null && fasilitas.isNotEmpty) {
      url += "fasilitas=$fasilitas&";
    }

    if (maxHarga != null) {
      url += "max_harga=$maxHarga&";
    }

    if (maxJarak != null) {
      url += "max_jarak=$maxJarak&";
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
