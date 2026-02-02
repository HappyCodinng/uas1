import 'package:flutter/material.dart';
import '../../widget/laporan/laporan_header.dart';
import '../../widget/laporan/laporan_card.dart';

class LaporanPage extends StatelessWidget {
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            const LaporanHeader(),

            Expanded(
              child: ListView(
                children: const [
                  LaporanCard(
                    title: "AC tidak dingin",
                    kosName: "Kos Melati Indah",
                    description:
                        "AC di kamar tidak dingin sudah 2 hari",
                    category: "Fasilitas",
                    date: "3 Desember 2025",
                    status: "Diproses",
                  ),
                  LaporanCard(
                    title: "Keran air bocor",
                    kosName: "Kos Melati Indah",
                    description:
                        "Keran air di kamar mandi bocor dan menetes terus",
                    category: "Fasilitas",
                    date: "29 November 2025",
                    status: "Selesai",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}