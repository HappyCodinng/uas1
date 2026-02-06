import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/checklist_provider.dart';

class ChecklistNotePage extends StatelessWidget {
  const ChecklistNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ChecklistProvider>();
    final controller = TextEditingController();
    final title = provider.lastSelectedItem ?? "-";

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.4),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Catatan Untuk:",
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 4),
              Text(title),

              const SizedBox(height: 12),

              TextField(
                controller: controller,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Tulis catatan disini...",
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Batal"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        provider.addNote(
                          title, 
                          controller.text
                        );
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00C853),
                      ),
                      child: const Text("Tambah"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
