import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/checklist_provider.dart';

class ChecklistItem extends StatelessWidget {
  final String title;

  const ChecklistItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ChecklistProvider>();
    final checked = provider.selectedItems.contains(title);
    final note = provider.notes[title];

    return GestureDetector(
      onTap: () => provider.toggleItem(title),
      child: Container(
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
                Icon(
                  checked
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  color: checked ? Colors.green : Colors.grey,
                ),
                const SizedBox(width: 8),
                Expanded(child: Text(title)),
              ],
            ),

            if (note != null && note.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                note,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
