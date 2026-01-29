import 'package:flutter/material.dart';

class NotifHeader extends StatelessWidget {
  final int unreadCount;
  final VoidCallback onClose;
  final VoidCallback onMarkAll;

  const NotifHeader({
    super.key,
    required this.unreadCount,
    required this.onClose,
    required this.onMarkAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Notifikasi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: onClose,
              child: const CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xFFF1F1F1),
                child: Icon(Icons.close, size: 18),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pantau semua update terkini",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: onMarkAll,
                  child: const Text(
                    "Tandai Semua Sudah Dibaca",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            if (unreadCount > 0)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "$unreadCount baru",
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
          ],
        ),
      ],
    );
  }
}