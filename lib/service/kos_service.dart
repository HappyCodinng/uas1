import '../model/kos.dart';
import 'kos_api.dart';

class KosService {
  static Future<List<Kos>> getKos({
    String? search,
    String? fasilitas,
  }) async {
    return await KosApi.getAll(
      search: search,
      fasilitas: fasilitas,
    );
  }
}
