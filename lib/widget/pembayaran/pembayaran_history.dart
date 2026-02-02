import 'package:flutter/material.dart';
import 'pembayaran_status.dart';

class PembayaranHistoryCard extends StatelessWidget {
  final String bulan;
  final String jatuhTempo;
  final String jumlah;
  final String status;

  const PembayaranHistoryCard({
    super.key,
    required this.bulan,
    required this.jatuhTempo,
    required this.jumlah,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bulan,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              PembayaranStatusBadge(status: status),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jatuh Tempo",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(jatuhTempo),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Jumlah",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    jumlah,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),

          if (status != "Lunas") ...[
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Bayar Sekarang"),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
