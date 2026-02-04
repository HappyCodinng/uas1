import 'package:flutter/material.dart';

class ProfileKosCard extends StatelessWidget {
  final String namaKos;
  final String alamat;
  final String harga;

  const ProfileKosCard({
    super.key,
    required this.namaKos,
    required this.alamat,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.home, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                "Kos Saat Ini",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "Kos Melati Indah",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 2),
          const Text(
            "Jl. Sudirman No.45",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const Divider(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Sewa Bulanan",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Rp 1.200.000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
