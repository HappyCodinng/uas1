import 'package:flutter/material.dart';

class ChecklistProvider extends ChangeNotifier {
  final List<String> items = [
    "Ukuran kamar sesuai dengan kebutuhan",
    "Ventilasi udara memadai",
    "Kondisi dinding, lantai dan plafon baik",
    "Pintu dan jendela berfungsi dengan baik",
    "Kebersihan kamar mandi",
    "Ada lemari / tempat penyimpanan",
    "Air mengalir lancar",
    "Wifi stabil dan cepat",
  ];

  final Set<String> selectedItems = {};
  final Map<String, String> notes = {};

  String? lastSelectedItem;

  void toggleItem(String title) {
    if (selectedItems.contains(title)) {
      selectedItems.remove(title);
    } else {
      selectedItems.add(title);
      lastSelectedItem = title;
    }
    notifyListeners();
  }

  void addNote(String title, String note) {
    notes[title] = note;
    notifyListeners();
  }

  void reset() {
    selectedItems.clear();
    notes.clear();
    lastSelectedItem = null;
    notifyListeners();
  }

  double get progress =>
      items.isEmpty ? 0 : selectedItems.length / items.length;
}
