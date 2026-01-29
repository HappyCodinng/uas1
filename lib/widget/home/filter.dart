import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Range Harga", style: TextStyle(fontWeight: FontWeight.bold)),
        Slider(value: 0.5, onChanged: null),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Rp 0"), Text("Rp 1.500.000")],
        ),
        SizedBox(height: 12),
        Text("Jarak Maksimal", style: TextStyle(fontWeight: FontWeight.bold)),
        Slider(value: 0.3, onChanged: null),
        Center(child: Text("5 km dari kampus")),
      ],
    );
  }
}
