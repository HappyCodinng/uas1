import 'package:flutter/material.dart';

class SplitBillHeader extends StatelessWidget {
  const SplitBillHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),  
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back, 
              color: Colors.white
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Split Bill Calculator",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          const Text(
            'Hitung pembagian biaya dengan mudah',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),

          SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(16),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Pengeluaran',
                  style: TextStyle(
                    color: Colors.white70,
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
          ),
        ],
      ),
    );
  }
}
