import 'package:flutter/material.dart';

class ChecklistNotePage extends StatelessWidget {
  const ChecklistNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Catatan"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text("Isi catatan checklist di sini"),
      ),
    );
  }
}
