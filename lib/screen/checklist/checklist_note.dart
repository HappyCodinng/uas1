import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/checklist_provider.dart';

class ChecklistNotePage extends StatefulWidget {
  const ChecklistNotePage({super.key});

  @override
  State<ChecklistNotePage> createState() => _ChecklistNotePageState();
}

class _ChecklistNotePageState extends State<ChecklistNotePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ChecklistProvider>();
    final item = provider.lastSelectedItem;

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
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(item ?? "-"),

              const SizedBox(height: 12),

              TextField(
                controller: _controller,
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
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00C853),
                      ),
                      onPressed: () {
                        provider.saveNote(
                          item!,
                          _controller.text,
                        );
                        Navigator.pop(context);
                      },
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
