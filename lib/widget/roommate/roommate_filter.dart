import 'package:flutter/material.dart';

class RoommateFilter extends StatelessWidget {
  final String selectedGender;
  final ValueChanged<String> onChanged;

  const RoommateFilter({
    super.key,
    required this.selectedGender,
    required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    final genders = ["Semua", "Laki-laki", "Perempuan"];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Wrap(
        spacing: 8,
        children: genders.map((gender) {
          final isSelected = selectedGender == gender;
          return ChoiceChip(
            label: Text(gender),
            selected: isSelected,
            onSelected: (_) => onChanged(gender),
          );
        }).toList(),
      ),
    );
  }
}