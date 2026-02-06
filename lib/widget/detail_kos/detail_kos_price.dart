import 'package:flutter/material.dart';

class KosPriceCard extends StatelessWidget {
  final Map<String, dynamic> kos;

  const KosPriceCard({super.key, required this.kos});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Harga Sewa"),
          const SizedBox(height: 4),
          Text(
            "Rp ${kos['harga']} / bulan",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
