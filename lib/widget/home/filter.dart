import 'package:flutter/material.dart';
import '../../service/kos_filter.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder<int?>(
          valueListenable: KosFilter.maxHarga,
          builder: (context, value, _) {
            return Slider(
              value: (value ?? 2000000).toDouble(),
              min: 500000,
              max: 2000000,
              divisions: 9,
              label: "Rp. ${(value ?? 2000000)}",
              onChanged: (val) {
                KosFilter.maxHarga.value = val.toInt();
              },
            );
          },
        ),

        const SizedBox(height: 8),

        ValueListenableBuilder<int?>(
          valueListenable: KosFilter.maxJarak,
          builder: (context, value, _) {
            return Slider(
              value: (value ?? 1000).toDouble(),
              min: 100,
              max: 1000,
              divisions: 9,
              label: "${value ?? 1000} dari kampus",
              onChanged: (val) {
                KosFilter.maxJarak.value = val.toInt();
              },
            );
          },
        ),
      ],
    );
  }
}