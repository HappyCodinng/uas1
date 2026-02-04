import 'package:flutter/material.dart';
import '../../model/kos.dart';

class KosCard extends StatelessWidget {
  final Kos kos;

  const KosCard({
    super.key,
    required this.kos,
  });

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
                    "${kos.alamat} (${kos.jarak} dari kampus)",
                  ),
                  
                  SizedBox(height: 6),

                  Row(
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.amber),
                      Text(" ${kos.rating}")
                    ],
                  ),

                  SizedBox(height: 6),

                  Text(
                    "Rp. ${kos.harga} / bulan",
                    style: TextStyle(
                      color: Colors.blue
                    )
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