import 'package:flutter/material.dart';

class ChecklistHeader extends StatelessWidget {
  const ChecklistHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF00C853), Color(0xFF00BFA5)],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Checklist Survey Kos",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Panduan lengkap saat survei kos",
            style: TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 12),

          LinearProgressIndicator(
            value: 0.0,
            backgroundColor: Colors.white24,
            color: Colors.white,
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              _actionButton(Icons.refresh, "Reset"),
              const SizedBox(width: 8),
              _actionButton(Icons.add, "Tambah"),
              const SizedBox(width: 8),
              _actionButton(Icons.share, "Export"),
            ],
          )
        ],
      ),
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 18),
            const SizedBox(width: 6),
            Text(label, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
