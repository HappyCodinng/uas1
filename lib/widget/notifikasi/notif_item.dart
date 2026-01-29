import 'package:flutter/material.dart';

class NotifItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  final String time;
  final bool unread;

  const NotifItem({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
    required this.time,
    this.unread = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: unread ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(desc, style: const TextStyle(fontSize: 13)),
                const SizedBox(height: 4),
                Text(time,
                    style:
                        const TextStyle(fontSize: 11, color: Colors.grey)),
              ],
            ),
          ),
          if (unread)
            const Icon(Icons.circle, size: 8, color: Colors.blue),
        ],
      ),
    );
  }
}
