import 'package:flutter/material.dart';
import 'notif_item.dart';

class NotifList extends StatelessWidget {
  const NotifList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NotifItem(
          icon: Icons.payment,
          title: "Pembayaran Jatuh Tempo",
          desc:
              "Pembayaran sewa bulan Desember akan jatuh tempo dalam 5 hari.",
          time: "2 jam yang lalu",
          unread: true,
        ),
        NotifItem(
          icon: Icons.chat,
          title: "Pesan Baru dari Ibu Sari",
          desc: "Kamarnya masih ada kok",
          time: "20 jam yang lalu",
          unread: true,
        ),
        NotifItem(
          icon: Icons.description,
          title: "Laporan Diproses",
          desc:
              "Laporan AC tidak dingin sedang dalam proses perbaikan.",
          time: "2 hari yang lalu",
        ),
      ],
    );
  }
}
