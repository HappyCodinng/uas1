import '../model/kos.dart';
import 'kos_api.dart';

class KosService {
  static Future<List<Kos>> getKos() async {
    return await KosApi.getAll();
  }
}
