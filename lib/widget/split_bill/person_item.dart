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
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange.shade200,
            child: Text(name[0]),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),

                Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.green
                  )
                ),
              ],
            ),
          ),
          
          if (canDelete) const Icon( 
            Icons.delete,
            color: Colors.orange
          ),
        ],
      ),
    );
  }
}
