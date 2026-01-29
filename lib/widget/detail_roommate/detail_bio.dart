import 'package:flutter/material.dart';

class DetailBio extends StatelessWidget {
  final String deskripsi;

  const DetailBio({super.key, required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Bio", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Text(deskripsi.isNotEmpty ? deskripsi : "-"),
      ],
    );
  }
}