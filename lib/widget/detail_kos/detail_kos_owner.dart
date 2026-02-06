import 'package:flutter/material.dart';

class KosOwnerInfo extends StatelessWidget {
  final Map<String, dynamic> kos;

  const KosOwnerInfo({super.key, required this.kos});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Informasi Pemilik",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: Text(kos['nama_pemilik']),
          subtitle: Text(kos['no_hp']),
        ),
      ],
    );
  }
}
