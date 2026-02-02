import 'package:flutter/material.dart';

class LaporanStatusBadge extends StatelessWidget {
  final String status;

  const LaporanStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final bool isDone = status == "Selesai";

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: isDone ? Colors.green.shade100 : Colors.blue.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            isDone ? Icons.check_circle : Icons.timelapse,
            size: 14,
            color: isDone ? Colors.green : Colors.blue,
          ),
          const SizedBox(width: 4),
          Text(
            status,
            style: TextStyle(
              fontSize: 12,
              color: isDone ? Colors.green : Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
