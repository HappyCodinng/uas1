import '../model/kos.dart';
import 'kos_api.dart';

class KosService {
  static Future<List<Kos>> getKos({String? search}) async {
    return await KosApi.getAll(search: search);
  }
}
