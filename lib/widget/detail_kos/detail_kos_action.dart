import 'package:flutter/material.dart';

class KosActionButtons extends StatelessWidget {
  const KosActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.phone),
                label: const Text("Telepon"),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.chat),
                label: const Text("Chat"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00C853),
            minimumSize: const Size(double.infinity, 48),
          ),
          child: const Text("Ajukan Sewa Kamar"),
        ),
      ],
    );
  }
}
