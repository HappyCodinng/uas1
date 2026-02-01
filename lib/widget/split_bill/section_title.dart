import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onAdd;

  const SectionTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange),
          const SizedBox(width: 6),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),

          ElevatedButton.icon(
            onPressed: onAdd,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            icon: const Icon(Icons.add, size: 16),
            label: const Text("Tambah"),
          ),
        ],
      ),
    );
  }
}
