import 'package:flutter/material.dart';

class KosMainInfo extends StatelessWidget {
  final Map<String, dynamic> kos;

  const KosMainInfo({super.key, required this.kos});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kos['nama_kos'],
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 4),

        Row(
          children: [
            const Icon(Icons.star, color: Colors.orange, size: 16),
            Text(" ${kos['rating']}"),
            const SizedBox(width: 8),
            Text("(${kos['jarak']} km dari kampus)",
                style: const TextStyle(color: Colors.grey)),
          ],
        ),

        const SizedBox(height: 6),

        Text(
          kos['alamat'],
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
