import 'package:flutter/material.dart';
import 'package:kostcheck/service/kos_filter.dart';

class DistanceFilter extends StatelessWidget {
  const DistanceFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int?>(
      valueListenable: KosFilter.maxJarak,
      builder: (_, value, __) {
        final jarak = value ?? 1000;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Jarak Maksimal",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 4),

            Text(
              "$jarak meter dari kampus",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            Slider(
              value: jarak.toDouble(),
              min: 100,
              max: 1000,
              divisions: 9,
              label: "$jarak m",
              onChanged: (val) {
                KosFilter.maxJarak.value = val.toInt();
              },
            ),
          ],
        );
      },
    );
  }
}