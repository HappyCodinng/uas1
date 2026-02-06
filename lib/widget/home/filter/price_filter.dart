import 'package:flutter/material.dart';
import '../../../service/kos_filter.dart';
import 'filter_card.dart';

class PriceFilter extends StatelessWidget {
  const PriceFilter({super.key});

  String  formatRupiah(int value) {
    return "Rp ${value.toString().replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (m) => '.',
    )}";
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int?>(
      valueListenable: KosFilter.maxHarga,
      builder: (_, value, __) {
        final harga = value ?? 2000000;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Harga Maksimal",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 4),

            Text(
              formatRupiah(harga),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            Slider(
              value: harga.toDouble(),
              min: 0,
              max: 2000000,
              divisions: 15,
              label: formatRupiah(harga),
              onChanged: (val) {
                KosFilter.maxHarga.value = val.toInt();
              },
            ),
          ],
        );
      },
    );
  }
}
