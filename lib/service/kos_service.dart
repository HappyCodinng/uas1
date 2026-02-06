import '../model/kos.dart';
import 'kos_api.dart';

class KosService {
  static Future<List<Kos>> getKos({
    String? search,
    String? fasilitas,
    int? maxHarga,
    int?maxJarak,
  }) async {
    return await KosApi.getAll(
      search: search,
      fasilitas: fasilitas,
      maxHarga: maxHarga,
      maxJarak: maxJarak,
    );
  }
}
