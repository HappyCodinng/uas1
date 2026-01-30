import 'package:flutter/material.dart';

class BillEmpty extends StatelessWidget {
  const BillEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: const [
          Icon(Icons.attach_money, size: 48, color: Colors.grey),
          SizedBox(height: 8),
          Text(
            "Belum ada tagihan",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          Text(
            "Tambahkan tagihan untuk mulai menghitung",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}