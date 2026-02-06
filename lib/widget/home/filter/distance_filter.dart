import 'package:flutter/material.dart';
import '../../../service/kos_filter.dart';
import 'filter_card.dart';

class DistanceFilterSlider extends StatelessWidget {
  const DistanceFilterSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterCard(
      child: ValueListenableBuilder<int?>(
        valueListenable: KosFilter.maxJarak,
        builder: (_, value, __) {
          final jarak = value ?? 5000;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.location_on, size: 18),
                  SizedBox(width: 6),
                  Text(
                    "Jarak Maksimal",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  showValueIndicator: ShowValueIndicator.onlyForDiscrete,
                  valueIndicatorColor: Colors.blue,
                  valueIndicatorTextStyle:
                      const TextStyle(color: Colors.white),
                  trackHeight: 4,
                ),
                child: Slider(
                  value: jarak.toDouble(),
                  min: 0,
                  max: 5000,
                  divisions: 10,
                  label: "${jarak ~/ 1000} km",
                  onChanged: (val) {
                    KosFilter.maxJarak.value = val.toInt();
                  },
                ),
              ),

              Text(
                "${jarak ~/ 1000} km dari kampus",
                style: TextStyle(color: Colors.grey.shade700),
              )
            ],
          );
        },
      ),
    );
  }
}
