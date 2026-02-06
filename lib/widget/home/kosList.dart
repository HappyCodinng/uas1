import 'package:flutter/material.dart';
import '../../service/kos_service.dart';
import '../../service/kos_filter.dart';
import '../../model/kos.dart';
import 'kosCard.dart';

class KosList extends StatelessWidget {
  const KosList({super.key});

  static ValueNotifier<String?> searchNotifier = ValueNotifier(null);
  static ValueNotifier<String?> fasilitasNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: searchNotifier,
      builder: (_, search, __) {
        return ValueListenableBuilder<String?>(
          valueListenable: fasilitasNotifier,
          builder: (_, fasilitas, __) {
            return ValueListenableBuilder<int?>(
              valueListenable: KosFilter.maxHarga,
              builder: (_, maxHarga, __) {
                return ValueListenableBuilder<int?>(
                  valueListenable: KosFilter.maxJarak,
                  builder: (_, maxJarak, __) {
                    return FutureBuilder<List<Kos>>(
                      future: KosService.getKos(
                        search: search,
                        fasilitas: fasilitas,
                        maxHarga: maxHarga,
                        maxJarak: maxJarak,
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }

                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return const Text("Kos tidak ditemukan");
                        }

                        return Column(
                          children: snapshot.data!
                              .map(
                                (kos) => Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 16),
                                  child: KosCard(kos: kos),
                                ),
                              )
                              .toList(),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
