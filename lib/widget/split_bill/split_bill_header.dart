import 'package:flutter/material.dart';

class SplitBillHeader extends StatelessWidget {
  const SplitBillHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),  
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hitung Pembagian Biaya dengan Mudah',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Total Pengeluaran',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Rp 0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),

          Text(
            '2 orang • 0 tagihan',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
