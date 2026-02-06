import 'package:flutter/material.dart';
import 'price_filter.dart';
import 'distance_filter.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PriceFilter(),
        SizedBox(height: 12),
        DistanceFilter(),
      ],
    );
  }
}
