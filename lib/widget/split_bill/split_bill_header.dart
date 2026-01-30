import 'package:flutter/material.dart';

class SplitBillHeader extends StatelessWidget {
  const SplitBillHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade400, Colors.orange.shade600],
        ),
        borderRadius: BorderRadius.circular(16),  
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context), 
                icon: const Icon(
                  Icons.arrow_back, 
                  color: Colors.white
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "Split Bill Calculator",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          const Text(
            "Hitung Pembagian biaya dengan mudah",
            style: TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 12),

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
