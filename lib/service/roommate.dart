import '../model/roommate.dart';
import 'roommate_api.dart';

class RoommateService {
  static Future<List<Roommate>> getRoommates({String? jenisKelamin}) async {
    return await RoommateApi.getAll(
      jenisKelamin: jenisKelamin,
    );
  }
}