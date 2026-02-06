import 'package:flutter/material.dart';
import '../../../service/kos_filter.dart';
import 'filter_card.dart';

class DistanceFilter extends StatelessWidget {
  const DistanceFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterCard(
      icon: Icons.location_on,
      title: "Jarak Maksimal",
      child: ValueListenableBuilder<int?>(
        valueListenable: KosFilter.maxJarak,
        builder: (_, value, __) {
          final jarak = value ?? 5000;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                value: jarak.toDouble(),
                min: 0,
                max: 5000,
                divisions: 10,
                onChanged: (val) {
                  KosFilter.maxJarak.value = val.toInt();
                },
              ),
              Text(
                "${jarak ~/ 1000} km dari kampus",
                style: const TextStyle(fontSize: 12),
              ),
            ],
          );
        },
      ),
    );
  }
}
