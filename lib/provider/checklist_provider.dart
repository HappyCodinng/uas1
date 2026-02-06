import 'package:flutter/material.dart';

class ChecklistProvider extends ChangeNotifier {
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

  void saveNote(String title, String note) {
    notes[title] = note;
    notifyListeners();
  }

  void reset() {
    selectedItems.clear();
    notes.clear();
    lastSelectedItem = null;
    notifyListeners();
  }

  double get progress {
    if (selectedItems.isEmpty) return 0;
    return selectedItems.length / 8;
  }
}
