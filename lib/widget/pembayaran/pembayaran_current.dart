import 'package:flutter/material.dart';

class PembayaranCurrentCard extends StatelessWidget {
  const PembayaranCurrentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Kos Saat Ini",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 4),
          Text(
            "Kos Melati Indah",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Sewa Bulanan",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 4),
          Text(
            "Rp 1.200.000",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
