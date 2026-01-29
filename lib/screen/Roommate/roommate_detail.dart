import 'package:flutter/material.dart';
import '../../model/roommate.dart';
import '../../widget/detail_roommate/detail_header.dart';
import '../../widget/detail_roommate/detail_profile.dart';
import '../../widget/detail_roommate/detail_bio.dart';
import '../../widget/detail_roommate/detail_referensi.dart';
import '../../widget/detail_roommate/tombol.dart';

class RoommateDetailPage extends StatelessWidget {
  final Roommate data;

  const RoommateDetailPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
        children: [
          const DetailHeader(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailProfile(data: data),
                  const SizedBox(height: 20),
                  DetailBio(deskripsi: data.deskripsi ?? '-'),
                  const SizedBox(height: 20),
                  const DetailPreference(),
                  const SizedBox(height: 24),
                  const DetailAction(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
