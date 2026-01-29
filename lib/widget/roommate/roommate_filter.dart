import 'package:flutter/material.dart';

class RoommateFilter extends StatelessWidget {
  final String selectedGender;
  final Function(String) onChanged;

  const RoommateFilter({
    super.key,
    required this.selectedGender,
    required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.wc, 
            color: Colors.purple
          ),

          const SizedBox(width: 12),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedGender,
                isExpanded: true,
                icon: const Icon(
                  Icons.keyboard_arrow_down
                ),

                items: [
                  DropdownMenuItem(
                    value: "Semua", 
                    child: Text("Semua")
                  ),
                  DropdownMenuItem(
                    value: "Laki-laki", 
                    child: Text("Laki-laki")
                  ),
                  DropdownMenuItem(
                    value: "Perempuan", 
                    child: Text("Perempuan")
                  ),
                ],
                onChanged: (val) => onChanged(val!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}