import 'package:flutter/material.dart';
import '../../widget/checklist/checklist_header.dart';
import '../../widget/checklist/checklist_tabs.dart';
import '../../widget/checklist/checklist_item.dart';

class ChecklistPage extends StatelessWidget {
  const ChecklistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ChecklistHeader(),

          const ChecklistTabs(),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ChecklistItem(title: "Ukuran kamar sesuai dengan kebutuhan"),
                ChecklistItem(title: "Ventilasi udara memadai"),
                ChecklistItem(title: "Kondisi dinding, lantai dan plafon baik"),
                ChecklistItem(title: "Pintu dan jendela berfungsi dengan baik"),
                ChecklistItem(title: "Kebersihan kamar mandi"),
                ChecklistItem(title: "Ada lemari / tempat penyimpanan"),
                ChecklistItem(title: "Air mengalir lancar"),
                ChecklistItem(title: "Wifi stabil dan cepat"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
