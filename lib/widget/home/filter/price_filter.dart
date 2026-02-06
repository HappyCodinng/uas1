import 'package:flutter/material.dart';
import '../../../service/kos_filter.dart';
import 'filter_card.dart';

class PriceFilter extends StatelessWidget {
  const PriceFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterCard(
      icon: Icons.attach_money,
      title: "Range Harga",
      child: ValueListenableBuilder<int?>(
        valueListenable: KosFilter.maxHarga,
        builder: (_, value, __) {
          final harga = value ?? 1500000;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                value: harga.toDouble(),
                min: 0,
                max: 1500000,
                divisions: 15,
                onChanged: (val) {
                  KosFilter.maxHarga.value = val.toInt();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rp 0", style: TextStyle(fontSize: 12)),
                  Text("Rp 1.500.000", style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
