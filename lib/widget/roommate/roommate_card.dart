import 'package:flutter/material.dart';
import 'package:kostcheck/model/roommate.dart';
import 'package:kostcheck/screen/Roommate/roommate_detail.dart';

class RoommateCard extends StatelessWidget {
  final Roommate data;

  const RoommateCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (_) => RoommateDetailPage(data: data),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          children: [
            const CircleAvatar(radius: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${data.nama}, ${data.umur?.toString() ?? '-'}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    data.kampus ?? '-',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right
            ),
          ],
        ),
      ),
    );
  }
}
              