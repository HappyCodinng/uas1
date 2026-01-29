import 'package:flutter/material.dart';

class DetailPreference extends StatelessWidget {
  const DetailPreference({super.key});

  Widget item(String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Preferensi", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        item("Jadwal Tidur", "Fleksibel"),
        item("Kebersihan", "⭐⭐⭐⭐"),
        item("Merokok", "Tidak"),
        item("Tingkat Kebisingan", "Sedang"),
        item("Frekuensi Tamu", "Sering"),
      ],
    );
  }
}
