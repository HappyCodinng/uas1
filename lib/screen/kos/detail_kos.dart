import 'package:flutter/material.dart';
import 'package:kostcheck/data/img_kos.dart';
import '../../model/kos.dart';

class DetailKosPage extends StatelessWidget {
  final Kos kos;

  const DetailKosPage({super.key, required this.kos});

  @override
  Widget build(BuildContext context) {
    final imageUrl = KosImages.getImageById(kos.id);

    return Scaffold(
      body: Column(
        children: [
          // FOTO KOS (LINK ONLINE)
          Stack(
            children: [
              Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              )
            ],
          ),

          // DETAIL
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kos.namaKos,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(kos.alamat, style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 12),

                Row(
                  children: [
                    Icon(Icons.location_on, size: 18, color: Colors.red),
                    const SizedBox(width: 4),
                    Text('${kos.jarak} m'),
                    const Spacer(),
                    Icon(Icons.star, color: Colors.amber),
                    Text(kos.rating.toString()),
                  ],
                ),

                const SizedBox(height: 16),

                Text(
                  'Rp ${kos.harga.toString()} / bulan',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Fasilitas',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),

                Wrap(
                  spacing: 8,
                  children: kos.fasilitas.map((f) {
                    return Chip(label: Text(f));
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}