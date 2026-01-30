import 'package:flutter/material.dart';

class PersonItem extends StatelessWidget {
  final String name;
  final String amount;
  final bool canDelete;

  const PersonItem({
    super.key,
    required this.name,
    required this.amount,
    this.canDelete = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange.shade100,
            child: Text(name[0]),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            "+$amount",
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (!canDelete)
            IconButton( 
            icon: const Icon(Icons.delete, color: Colors.green),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
