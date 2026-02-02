import 'package:flutter/material.dart';
import '../../widget/pembayaran/pembayaran_header.dart';
import '../../widget/pembayaran/pembayaran_alert.dart';
import '../../widget/pembayaran/pembayaran_current.dart';
import '../../widget/pembayaran/pembayaran_history.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: ListView(
          children: const [
            PembayaranHeader(),
            PembayaranAlert(),
            PembayaranCurrentCard(),

            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                "Riwayat Pembayaran",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            PembayaranHistoryCard(
              bulan: "Desember 2025",
              jatuhTempo: "10 Desember 2025",
              jumlah: "Rp 1.200.000",
              status: "Menunggu",
            ),
            PembayaranHistoryCard(
              bulan: "November 2025",
              jatuhTempo: "8 November 2025",
              jumlah: "Rp 1.200.000",
              status: "Lunas",
            ),
            PembayaranHistoryCard(
              bulan: "Oktober 2025",
              jatuhTempo: "9 Oktober 2025",
              jumlah: "Rp 1.200.000",
              status: "Lunas",
            ),
          ],
        ),
      ),
    );
  }
}
