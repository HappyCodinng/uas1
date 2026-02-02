import 'package:flutter/material.dart';

class PembayaranStatusBadge extends StatelessWidget {
  final String status;

  const PembayaranStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final bool isPaid = status == "Lunas";

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: isPaid ? Colors.green.shade100 : Colors.orange.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            isPaid ? Icons.check_circle : Icons.timelapse,
            size: 14,
            color: isPaid ? Colors.green : Colors.orange,
          ),
          const SizedBox(width: 4),
          Text(
            status,
            style: TextStyle(
              fontSize: 12,
              color: isPaid ? Colors.green : Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
