import 'package:flutter/material.dart';

class ChecklistItem extends StatelessWidget {
  final String title;

  const ChecklistItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.radio_button_unchecked),
              const SizedBox(width: 8),
              Expanded(child: Text(title)),
            ],
          ),

          const SizedBox(height: 6),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/checklist-note');
            },
            child: const Text(
              "+ Tambah catatan",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
