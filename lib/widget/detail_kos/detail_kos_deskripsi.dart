import 'package:flutter/material.dart';

class KosDescription extends StatelessWidget {
  final String description;

  const KosDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Deskripsi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(description),
      ],
    );
  }
}
