import 'package:flutter/material.dart';

class KosFacilities extends StatelessWidget {
  final String fasilitas;

  const KosFacilities({super.key, required this.fasilitas});

  @override
  Widget build(BuildContext context) {
    final items = fasilitas.split(',');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Fasilitas",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items
              .map((f) => Chip(label: Text(f.trim())))
              .toList(),
        ),
      ],
    );
  }
}
