import 'package:flutter/material.dart';
import '../../../service/kos_filter.dart';
import 'filter_card.dart';

class PriceFilterSlider extends StatelessWidget {
  const PriceFilterSlider({super.key});

  String formatRupiah(int value) {
    return "Rp ${value.toString().replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (m) => '.',
    )}";
  }

  @override
  Widget build(BuildContext context) {
    return FilterCard(
      child: ValueListenableBuilder<int?>(
        valueListenable: KosFilter.maxHarga,
        builder: (_, value, __) {
          final harga = value ?? 1500000;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.attach_money, size: 18),
                  SizedBox(width: 6),
                  Text(
                    "Range Harga",
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
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 10),
                ),
                child: Slider(
                  value: harga.toDouble(),
                  min: 0,
                  max: 1500000,
                  divisions: 15,
                  label: formatRupiah(harga),
                  onChanged: (val) {
                    KosFilter.maxHarga.value = val.toInt();
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Rp 0"),
                  Text("Rp 1.500.000"),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
