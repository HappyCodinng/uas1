import 'package:flutter/material.dart';
import '../../model/kos.dart';

class KosCard extends StatelessWidget {
  final Kos kos;

  const KosCard({
    super.key,
    required this.kos,
  });

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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Image.network(
              "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2",
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kos.namaKos,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    )
                  ),

                  SizedBox(height: 4),

                  Text(
                    "${kos.jarak} m dari kampus",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  if(kos.fasilitas.isNotEmpty)
                  Wrap(
                    spacing: 8,
                    runSpacing: 6,
                    children: kos.fasilitas.map((f) {
                      return Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Icon(
                          getFasilitasIcon(f),
                          size: 18,
                          color: Colors.blue,
                        ),
                      );
                    }).toList(),
                  ),
                  
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(
                        Icons.star, 
                        size: 16, 
                        color: Colors.amber
                      ),

                      const SizedBox(width: 4),

                      Text(
                        kos.rating.toString(),
                        style: TextStyle(
                          fontSize: 12
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 6),

                  Text(
                    "Rp. ${kos.harga} / bulan",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}