import 'package:flutter/material.dart';
import '../../model/kos.dart';
import '../../data/img_kos.dart';

class DetailKosPage extends StatelessWidget {
  final Kos kos;

  const DetailKosPage({super.key, required this.kos});

  @override
  Widget build(BuildContext context) {
    final imageUrl = KosImages.getImageById(kos.id);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// ===== FOTO HEADER =====
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 260,
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

            /// ===== ISI DETAIL =====
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Nama Kos
                  Text(
                    kos.namaKos,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  /// Alamat
                  Text(
                    kos.alamat,
                    style: const TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 12),

                  /// Jarak & Rating
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 18, color: Colors.red),
                      const SizedBox(width: 4),
                      Text('${kos.jarak} m dari kampus'),
                      const Spacer(),
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(kos.rating.toString()),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// Harga
                  Text(
                    'Rp ${kos.harga} / bulan',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// ===== TIPE KOS =====
                  const Text(
                    'Tipe Kos',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Chip(
                    label: Text(kos.tipeKos),
                    backgroundColor: Colors.blue.shade50,
                  ),

                  const SizedBox(height: 24),

                  /// ===== FASILITAS =====
                  const Text(
                    'Fasilitas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: kos.fasilitas.map((f) {
                      return Chip(
                        label: Text(f),
                        backgroundColor: Colors.grey.shade200,
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24),

                  /// ===== DESKRIPSI (DUMMY, AMAN) =====
                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  const Text(
                    'Kos nyaman dan strategis dekat kampus, '
                    'akses mudah, lingkungan aman dan tenang. '
                    'Cocok untuk mahasiswa.',
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 32),

                  /// ===== TOMBOL AKSI =====
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: const Color(0xFF00C853),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Hubungi Pemilik',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
