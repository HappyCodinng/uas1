import 'package:flutter/material.dart';
import '../../model/kos.dart';
import '../../screen/kos/detail_kos.dart';

class KosCard extends StatelessWidget {
  final Kos kos;

  const KosCard({super.key, required this.kos});

  IconData getFasilitasIcon(String f) {
    switch (f.toLowerCase()) {
      case 'wifi':
        return Icons.wifi;
      case 'ac':
        return Icons.ac_unit;
      case 'parkir':
        return Icons.local_parking;
      case 'cctv':
        return Icons.videocam;
      case 'air':
        return Icons.water_drop;
      case 'listrik':
        return Icons.flash_on;
      default:
        return Icons.check_circle;
    }
  }

  Color getTipeColor() {
    switch (kos.tipeKos.toLowerCase()) {
      case 'putri':
        return Colors.pink.shade100;
      case 'putra':
        return Colors.blue.shade100;
      default:
        return Colors.green.shade100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailKosPage(kos: kos),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.network(
                "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2",
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          kos.namaKos,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: getTipeColor(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          kos.tipeKos,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        kos.rating.toString(),
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          "${kos.alamat} (${kos.jarak} m)",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 10,
                    children: kos.fasilitas.map((f) {
                      return Icon(
                        getFasilitasIcon(f),
                        size: 20,
                        color: Colors.grey.shade700,
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp ${kos.harga}/bulan",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "3 kamar tersedia",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}