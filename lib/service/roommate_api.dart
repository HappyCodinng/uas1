import 'dart:convert';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kostcheck/model/roommate.dart';
import '../config/api.dart';

class RoommateApi {
  static Future<List<Roommate>> getAll({String? jenisKelamin}) async {
    String url = "${Api.baseUrl}/roommate/get_all.php";

    if (jenisKelamin != null && jenisKelamin != "Semua") {
      url += "?jenis_kelamin=$jenisKelamin";
    }

    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);

    if (data['status'] == true) {
      return (data['data'] as List)
      .map((e) => Roommate.fromJson(e))
      .toList();
    } else {
      throw Exception("Gagal mengambil data roommate");
    }
  }
}